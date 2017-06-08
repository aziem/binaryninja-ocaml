open Ctypes
open Foreign

module B = Ffi_bindings.Bindings(Ffi_generated_types)(Ffi_generated)
open Ffi_bindings
open B

type bn_symbol = Ffi_bindings.bn_symbol Ctypes.structure Ctypes_static.ptr

type bn_symbol_type = Ffi_bindings.bn_symbol_type = 
  | BN_FunctionSymbol 
  | BN_ImportAddressSymbol 
  | BN_ImportedFunctionSymbol 
  | BN_DataSymbol 
  | BN_ImportedDataSymbol

let get_type s =
  B.bn_get_symbol_type s

let get_short_name s =
  B.bn_get_symbol_shortname s

let get_full_name s =
  B.bn_get_symbol_fullname s

let get_raw_name s =
  B.bn_get_symbol_rawname s

let get_address s =
  B.bn_get_symbol_address s

let is_auto_defined s =
  B.bn_is_symbol_autodefined s

let set_auto_defined s b =
  B.bn_set_symbol_autodefined s b

let get_symbol_by_address bv addr =
  B.bn_get_symbol_by_address bv addr

let get_symbol_by_raw_name bv name =
  B.bn_get_symbol_by_rawname bv name
