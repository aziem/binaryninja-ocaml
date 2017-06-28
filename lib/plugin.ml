open Ctypes
open Foreign


module B = Ffi_bindings.Bindings(Ffi_generated_types)(Ffi_generated)
open Ffi_bindings
open B

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
type action_for_command = Typedefs.bn_binary_view Ctypes.structure Ctypes_static.ptr -> unit 
type is_valid_for_command = Typedefs.bn_binary_view Ctypes.structure Ctypes_static.ptr -> bool

type action_for_range = Typedefs.bn_binary_view Ctypes.structure Ctypes_static.ptr -> Unsigned.uint64 -> Unsigned.uint64 -> unit
type is_valid_for_range = Typedefs.bn_binary_view Ctypes.structure Ctypes_static.ptr -> Unsigned.uint64 -> Unsigned.uint64 -> bool

type action_for_address = Typedefs.bn_binary_view Ctypes.structure Ctypes_static.ptr -> Unsigned.uint64 -> unit
type is_valid_for_address = Typedefs.bn_binary_view Ctypes.structure Ctypes_static.ptr -> Unsigned.uint64 -> bool

type action_for_function = Typedefs.bn_binary_view Ctypes.structure Ctypes_static.ptr -> Typedefs.bn_function Ctypes.structure Ctypes_static.ptr -> unit
type is_valid_for_function = Typedefs.bn_binary_view Ctypes.structure Ctypes_static.ptr -> Typedefs.bn_function Ctypes.structure Ctypes_static.ptr -> bool


type action =
  | ActionForCommand of action_for_command
  | ActionForRange of action_for_range
  | ActionForAddress of action_for_address
  | ActionForFunction of action_for_function

type is_valid =
  | IsValidForCommand of is_valid_for_command
  | IsValidForRange of is_valid_for_range
  | IsValidForAddress of is_valid_for_address
  | IsValidForFunction of is_valid_for_function

let coerce_fun typ f =
  coerce (Foreign.funptr typ) (static_funptr typ) f


let bn_register_plugin_command name descr (action_func : action_for_command) (isvalid_func : is_valid_for_command) =
  let action' = fun _ bv -> action_func bv in
  let is_valid' = fun _ bv -> isvalid_func bv in
  B.bn_register_plugin_command name descr
    (coerce_fun B.plugin_action action')
    (coerce_fun B.plugin_is_valid is_valid')
    (Ffi_generated_types.null)


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

let bn_register_plugin_command_for_function name descr (action_func : action_for_function) (isvalid_func: is_valid_for_function) =
  let action' = fun _ bv func -> action_func bv func in
  let is_valid' = fun _ bv func -> isvalid_func bv func in
  B.bn_register_plugin_command_for_function name descr
    (coerce_fun B.plugin_action_for_function action')
    (coerce_fun B.plugin_is_valid_for_function is_valid')
    (Ffi_generated_types.null)

module type BinaryNinjaPlugin =
sig
  val name : string
  val descr : string
  val action : action
  val is_valid : is_valid
end

module GeneratePlugin(B:BinaryNinjaPlugin) =
struct
  let core_plugin_init () =
      match B.action, B.is_valid with
      | ActionForCommand f, IsValidForCommand f' ->
        bn_register_plugin_command B.name B.descr f f'
      | ActionForAddress f, IsValidForAddress f' ->
        bn_register_plugin_command_for_address B.name B.descr f f'
      | ActionForRange f, IsValidForRange f' ->
        bn_register_plugin_command_for_range B.name B.descr f f'
      | ActionForFunction f, IsValidForFunction f' ->
        bn_register_plugin_command_for_function B.name B.descr f f'
      | _ -> assert false
    
  let write_c = write_c

  let () = Callback.register "core_plugin_init" core_plugin_init
end




