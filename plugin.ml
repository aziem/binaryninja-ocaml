open Ctypes
open Foreign


module B = Ffi_bindings.Bindings(Ffi_generated_types)(Ffi_generated)
open Ffi_bindings
open B

type action_for_range = bn_binary_view Ctypes.structure Ctypes_static.ptr -> Unsigned.uint64 -> Unsigned.uint64 -> unit
type is_valid_for_range = bn_binary_view Ctypes.structure Ctypes_static.ptr -> Unsigned.uint64 -> Unsigned.uint64 -> bool

type action_for_address = bn_binary_view Ctypes.structure Ctypes_static.ptr -> Unsigned.uint64 -> unit
type is_valid_for_address = bn_binary_view Ctypes.structure Ctypes_static.ptr -> Unsigned.uint64 -> bool

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

module type BinjaPluginForRange =
sig
  val name : string
  val descr : string

  val action : bn_binary_view Ctypes.structure Ctypes_static.ptr -> Unsigned.uint64 -> Unsigned.uint64 -> unit 
  
  val is_valid : bn_binary_view Ctypes.structure Ctypes_static.ptr -> Unsigned.uint64 -> Unsigned.uint64 -> bool 

end


module GeneratePluginForRange ( B : BinjaPluginForRange) =
struct

  let core_plugin_init () =
    bn_register_plugin_command_for_range
      B.name
      B.descr
      B.action
      B.is_valid;
    true
  
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

  let () = Callback.register "core_plugin_init" core_plugin_init

end
 
