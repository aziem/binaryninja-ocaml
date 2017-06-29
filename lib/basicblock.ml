open Ctypes
open Foreign

module B = Ffi_bindings.Bindings(Ffi_generated_types)(Ffi_generated)
module U = Utils
open Ffi_bindings
open B

type bn_basicblock = Typedefs.bn_basicblock Ctypes.structure Ctypes_static.ptr
type bn_basicblock_edge = B.E.bn_basic_block_edge Ctypes.structure 

let get_function b =
  B.bnget_basic_block_function b

let get_architecture b =
  B.bnget_basic_block_architecture b

let get_start b =
  B.bnget_basic_block_start b

let get_end b =
  B.bnget_basic_block_end b

let get_length b =
  B.bnget_basic_block_length b

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

let get_instructions b =
  let func = get_function b in
  let lowfunc = Function.get_function_lowlevelil func in
  let arch = get_architecture b in
  let start = get_start b in
  let end_ = get_end b in
  let rec loop acc i =
    if(i=end_) then
      acc
    else
      begin
        let instr = Function.get_lowlevelil_for_instruction func arch i in
        let index = Lowlevelil.Function.get_index_for_instruction lowfunc instr in
        let lowinstruction = Lowlevelil.Function.get_lowlevelil_by_index lowfunc index in
        loop (lowinstruction :: acc) (Unsigned.UInt64.add Unsigned.UInt64.one i)
      end
  in
  List.rev (loop [] start)
