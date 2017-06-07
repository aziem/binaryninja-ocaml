open Ctypes
open Foreign

module B = Ffi_bindings.Bindings(Ffi_generated_types)(Ffi_generated)
open Ffi_bindings
open B


type bn_function = Ffi_bindings.bn_function Ctypes.structure Ctypes_static.ptr
    
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