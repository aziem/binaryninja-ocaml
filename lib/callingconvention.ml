open Ctypes
open Foreign

module B = Ffi_bindings.Bindings(Ffi_generated_types)(Ffi_generated)
module U = Utils
open Ffi_bindings
open B

type bn_callingconvention = Typedefs.bn_callingconvention Ctypes.structure Ctypes_static.ptr
