open Ctypes
open Foreign

module B = Ffi_bindings.Bindings(Ffi_generated_types)(Ffi_generated)
module U = Utils
open Ffi_bindings
open B

type bn_basicblock = Typedefs.bn_basicblock Ctypes.structure Ctypes_static.ptr


module BasicBlockEdge =
struct
  type bn_basicblock_edge = B.E.bn_basic_block_edge Ctypes.structure

  
  type bn_branch_type = Typedefs.bn_branch_type = 
    | BN_UnconditionalBranch 
    | BN_FalseBranch 
    | BN_TrueBranch 
    | BN_CallDestination 
    | BN_FunctionReturn 
    | BN_SystemCall 
    | BN_IndirectBranch 
    | BN_UnresolvedBranch

  let get_branch_type be =
    getf be B.E.bn_basic_block_edge_type_ 
  
  let get_target be =
    getf be B.E.bn_basic_block_edge_target

  let get_arch be =
    getf be B.E.bn_basic_block_edge_arch
  
end



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
  let lowfunc = Lowlevelil.LowFunction.get_function_lowlevel func in
  let arch = get_architecture b in
  let start = get_start b in
  let end_ = get_end b in
  let rec loop acc i =
    if(i=end_) then
      acc
    else
      begin
        let instr = Function.get_lowlevelil_for_instruction func arch i in
        let index = Lowlevelil.LowFunction.get_index_for_instruction lowfunc instr in
        let lowinstruction = Lowlevelil.LowFunction.get_lowlevelil_by_index lowfunc index in
        loop (lowinstruction :: acc) (Unsigned.UInt64.add Unsigned.UInt64.one i)
      end
  in
  List.rev (loop [] start)
