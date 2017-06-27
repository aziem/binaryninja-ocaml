open Ctypes

(* Convert pointer with possible null value into option type *)
let optionify_ptr typ obj = Ffi_generated_types.coerce (ptr typ) (ptr_opt typ) obj 
