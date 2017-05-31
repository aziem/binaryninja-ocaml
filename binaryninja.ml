open Ctypes
open Foreign


module B = Ffi_bindings.Bindings(Ffi_generated_types)(Ffi_generated)
open Ffi_bindings
open B

type bn_file_metadata = Ffi_bindings.bn_file_metadata Ctypes.structure Ctypes_static.ptr
type bn_binary_view = Ffi_bindings.bn_binary_view Ctypes.structure Ctypes_static.ptr
type bn_platform = Ffi_bindings.bn_platform Ctypes.structure Ctypes_static.ptr
type bn_architecture = Ffi_bindings.bn_architecture Ctypes.structure Ctypes_static.ptr

type action_for_range = bn_binary_view -> Unsigned.uint64 -> Unsigned.uint64 -> unit
type is_valid_for_range = bn_binary_view -> Unsigned.uint64 -> Unsigned.uint64 -> bool

type action_for_address = bn_binary_view -> Unsigned.uint64 -> unit
type is_valid_for_address = bn_binary_view -> Unsigned.uint64 -> bool

type analysis_state = Ffi_bindings.bn_analysis_state =
  | IdleState
  | DisassembleState
  | AnalyzeState

type loglevel = Ffi_bindings.bn_log_level =
  | BN_DebugLog
  | BN_InfoLog
  | BN_WarningLog
  | BN_ErrorLog
  | BN_AlertLog


let get_build_id () =
  B.bn_get_build_id () |> Unsigned.UInt32.to_int

let init_core_plugins () =
  B.bn_init_core_plugins ()
             
let init_user_plugins () =
  B.bn_init_user_plugins ()


let create_file_metadata = B.bn_create_file_metadata 

(* let get_view_types () = *)
(*   let coerce_to_binview = coerce (ptr (ptr void)) (ptr (ptr Ffi_bindings.bn_binary_viewtype)) in *)
(*   let i = allocate size_t (Unsigned.Size_t.of_int 0) in *)
(*   let res = coerce_to_binview (B.bn_get_binary_view_types i) in *)
(*   CArray.from_ptr res (Unsigned.Size_t.to_int (!@ i)) |> CArray.to_list *)


let log_error msg =
  B.bn_log BN_ErrorLog msg

let create_binary_dataview_from_filename bnfilemetadata filename =
  B.bn_create_binary_dataview_from_filename bnfilemetadata filename

let update_analysis binary_view =
  B.bn_update_analysis binary_view

let get_default_platform binary_view =
  B.bn_get_default_platform binary_view

let get_default_architecture binary_view =
  B.bn_get_default_architecture binary_view

let get_default_architecture_name bn_arch =
  B.bn_get_architecture_name bn_arch
  
let get_platform_name platform =
  B.bn_get_platform_name platform 

let get_analysis_progress binary_view =
  let prog = B.bn_get_analysis_progress binary_view in
  let state = getf prog B.E.state in
  state

let coerce_fun typ f =
  coerce (Foreign.funptr typ) (static_funptr typ) f

let bn_register_plugin_command_for_range name descr (action_func : action_for_range) (isvalid_func : is_valid_for_range) =
  let action' = fun _ bv start length -> action_func bv start length in
  let is_valid' = fun _ bv start length -> isvalid_func bv start length in
  B.bn_register_plugin_command_for_range name descr
    (coerce_fun B.plugin_action_for_range action')
    (coerce_fun B.plugin_is_valid_for_range is_valid')
    (Ffi_generated_types.null)

let bn_register_plugin_command_for_address name descr (action_func : action_for_address) (isvalid_func: is_valid_for_address) =
  let action' = fun _ bv start -> action_func bv start in
  let is_valid' = fun _ bv start -> isvalid_func bv start in
  B.bn_register_plugin_command_for_address name descr
    (coerce_fun B.plugin_action_for_address action')
    (coerce_fun B.plugin_is_valid_for_address is_valid')
    (Ffi_generated_types.null)




let bn_get_scripting_provider_list () =
  let i = allocate size_t (Unsigned.Size_t.of_int 3) in
  let b = bn_get_scripting_provider_list i in
  Printf.printf "scripting list size %s\n" (Unsigned.Size_t.to_string !@i);
  ()

let bn_write_view_data bn_view offset data len =
  B.bn_write_view_data bn_view offset (coerce string (ptr void) data) len

(* let create_binary_dataview_from_filename bnfilemetadata filename = *)
(*   let metadatafile = to_voidp bnfilemetadata in *)
(*   let res = B.bn_create_binary_dataview_from_filename metadatafile filename in *)
(*   from_voidp (Ffi_bindings.bn_binary_view) res *)

(* let binaryview_type_name binary_view_type = *)
(*   let res = B.bn_get_binary_view_typename binary_view_type in *)
(*   res *)


module type BinjaPluginReg =
sig
  val core_plugin_init : unit -> bool
end


module GeneratePlugin ( B : BinjaPluginReg) =
struct

  let c_prologue fmt =
    Format.fprintf fmt "#include <stdio.h>\n";
    Format.fprintf fmt "#include <stdlib.h>\n";
    Format.fprintf fmt "#include <stdbool.h>\n";
    Format.fprintf fmt "#include <string.h>\n";
    Format.fprintf fmt "#include <caml/alloc.h>\n";
    Format.fprintf fmt "#include <caml/mlvalues.h>\n";
    Format.fprintf fmt "#include <caml/memory.h>\n";
    Format.fprintf fmt "#include <caml/callback.h>\n"

  let c_init_func fmt =
    Format.fprintf fmt "@\n 
static void init_plugin() {
CAMLparam0();
CAMLlocal1(o);
o = Val_unit;
  
value * func = caml_named_value(\"core_plugin_init\");
  
if (func == NULL) {
    printf(\"Failed loading \\n\");
} else {
    caml_callback(*func, o);
}
  
  CAMLreturn0;
}@\n"

  let c_binja_plugin_func fmt =
    Format.fprintf fmt "\n
bool CorePluginInit() {
  char *caml_argv[1] = {NULL};
  caml_startup(caml_argv);
  init_plugin();
  return true;
}\n"
  

  let write_c () =
    let f = open_out "./binding.c" in
    let fmtr = Format.formatter_of_out_channel f in
    c_prologue fmtr; c_init_func fmtr; c_binja_plugin_func fmtr

  let () = Callback.register "core_plugin_init" B.core_plugin_init

end
  


