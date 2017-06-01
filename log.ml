open Ctypes
open Foreign

module B = Ffi_bindings.Bindings(Ffi_generated_types)(Ffi_generated)
open Ffi_bindings
open B

type loglevel = Ffi_bindings.bn_log_level =
  | BN_DebugLog
  | BN_InfoLog
  | BN_WarningLog
  | BN_ErrorLog
  | BN_AlertLog


let log level msg =
  B.bn_log level msg

let log_debug msg =
  B.bn_log BN_DebugLog msg

let log_info msg =
  B.bn_log BN_InfoLog msg

let log_warning msg =
  B.bn_log BN_WarningLog msg
let log_error msg =
  B.bn_log BN_ErrorLog msg

let log_alert msg =
  B.bn_log BN_AlertLog msg 
