open Ctypes
open Foreign

module B = Ffi_bindings.Bindings(Ffi_generated_types)(Ffi_generated)
module U = Utils
open Ffi_bindings
open B

type bn_binary_view = Typedefs.bn_binary_view Ctypes.structure Ctypes_static.ptr

let is_modified bv =
  B.bnis_view_modified bv

let functions bv =
  Utils.get_list_of_things bv B.bnget_analysis_function_list B.bnfree_function_list B.bnnew_function_reference
