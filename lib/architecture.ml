open Ctypes
open Foreign

module B = Ffi_bindings.Bindings(Ffi_generated_types)(Ffi_generated)
module U = Utils
open Ffi_bindings
open B

type bn_architecture = Typedefs.bn_architecture Ctypes.structure Ctypes_static.ptr

let get_flag_name arch flag =
  let s = B.bnget_architecture_flag_name arch flag in
  let s' = String.copy s in
  bn_free_string s;
  s'

let get_reg_name arch reg =
  let s = B.bnget_architecture_register_name arch reg in
  let s' = String.copy s in
  bn_free_string s;
  s'
