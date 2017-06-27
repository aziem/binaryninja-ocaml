open Ctypes
open Foreign

module B = Ffi_bindings.Bindings(Ffi_generated_types)(Ffi_generated)
module U = Utils
open Ffi_bindings
open B

let get_function b =
  B.bnget_basic_block_function b

let get_architecture b =
  B.bnget_basic_block_architecture b

let get_start b =
  B.bnget_basic_block_start

let get_end b =
  B.bnget_basic_block_end

let get_length b =
  B.bnget_basic_block_length

let get_outgoing_edges b =
  let i = allocate size_t (Unsigned.Size_t.of_int 0) in
  let lst = B.bnget_basic_block_outgoing_edges b i in
  let sz = Unsigned.Size_t.to_int !@i in
  let rec loop acc i =
    match i with
    | _ when i=sz -> acc
    | _ as n ->
      let edge = !@(lst +@ n) in
      loop (edge :: acc) (n+1)
  in
  List.rev (loop [] 0)

let has_undetermined_outgoing_edges b =
  B.bnbasic_block_has_undetermined_outgoing_edges b

let mark_recently_used b =
  B.bnmark_basic_block_as_recently_used b
