open Ctypes
open Foreign

module B = Ffi_bindings.Bindings(Ffi_generated_types)(Ffi_generated)
module U = Utils
open Ffi_bindings
open B

type bn_function = Typedefs.bn_function Ctypes.structure Ctypes_static.ptr
    
let get_platform f =
  B.bn_get_function_platform f
    
let get_architecture f =
  B.bn_get_function_architecture f

let get_start f =
  B.bn_get_function_start f

let get_symbol f =
  B.bn_get_function_symbol f

let was_function_auto_discovered f =
  B.bn_was_function_automatically_discovered f

let can_function_return f =
  B.bn_can_function_return f

let has_explicitly_defined_type f =
  B.bnfunction_has_explicitly_defined_type f

let needs_update f =
  B.bnis_function_update_needed f 

let get_basic_blocks f =
  let i = allocate size_t (Unsigned.Size_t.of_int 0) in
  let lst = B.bn_get_function_basic_block_list f i in
  let sz = (Unsigned.Size_t.to_int !@i) in
  let rec loop acc i =
    match i with
    | _ when i=sz -> acc
    | _ as n ->
      let block = !@(lst +@ n) in
      loop (block :: acc) (n+1)
  in
  List.rev (loop [] 0)

let get_basic_block_at_addr f arch addr =
  B.bnget_function_basic_block_at_address f arch addr |> U.optionify_ptr B.E.bn_basicblock

let mark_recently_used f =
  B.bnmark_function_as_recently_used f





