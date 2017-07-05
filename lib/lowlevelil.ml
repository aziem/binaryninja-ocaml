open Ctypes
open Foreign

module B = Ffi_bindings.Bindings(Ffi_generated_types)(Ffi_generated)
module U = Utils
open Ffi_bindings
open B

type bn_low_level_il_instruction = Typedefs.bn_low_level_il_instruction Ctypes.structure 

type bn_low_level_il_operation =  Typedefs.bn_low_level_il_operation = 
  | BN_LLIL_NOP
  | BN_LLIL_SET_REG
  | BN_LLIL_SET_REG_SPLIT
  | BN_LLIL_SET_FLAG
  | BN_LLIL_LOAD
  | BN_LLIL_STORE
  | BN_LLIL_PUSH
  | BN_LLIL_POP
  | BN_LLIL_REG
  | BN_LLIL_CONST
  | BN_LLIL_FLAG
  | BN_LLIL_FLAG_BIT
  | BN_LLIL_ADD
  | BN_LLIL_ADC
  | BN_LLIL_SUB
  | BN_LLIL_SBB
  | BN_LLIL_AND
  | BN_LLIL_OR
  | BN_LLIL_XOR
  | BN_LLIL_LSL
  | BN_LLIL_LSR
  | BN_LLIL_ASR
  | BN_LLIL_ROL
  | BN_LLIL_RLC
  | BN_LLIL_ROR
  | BN_LLIL_RRC
  | BN_LLIL_MUL
  | BN_LLIL_MULU_DP
  | BN_LLIL_MULS_DP
  | BN_LLIL_DIVU
  | BN_LLIL_DIVU_DP
  | BN_LLIL_DIVS
  | BN_LLIL_DIVS_DP
  | BN_LLIL_MODU
  | BN_LLIL_MODU_DP
  | BN_LLIL_MODS
  | BN_LLIL_MODS_DP
  | BN_LLIL_NEG
  | BN_LLIL_NOT
  | BN_LLIL_SX
  | BN_LLIL_ZX
  | BN_LLIL_JUMP
  | BN_LLIL_JUMP_TO
  | BN_LLIL_CALL
  | BN_LLIL_RET
  | BN_LLIL_NORET
  | BN_LLIL_IF
  | BN_LLIL_GOTO
  | BN_LLIL_FLAG_COND
  | BN_LLIL_CMP_E
  | BN_LLIL_CMP_NE
  | BN_LLIL_CMP_SLT
  | BN_LLIL_CMP_ULT
  | BN_LLIL_CMP_SLE
  | BN_LLIL_CMP_ULE
  | BN_LLIL_CMP_SGE
  | BN_LLIL_CMP_UGE
  | BN_LLIL_CMP_SGT
  | BN_LLIL_CMP_UGT
  | BN_LLIL_TEST_BIT
  | BN_LLIL_BOOL_TO_INT
  | BN_LLIL_SYSCALL
  | BN_LLIL_BP
  | BN_LLIL_TRAP
  | BN_LLIL_UNDEF
  | BN_LLIL_UNIMPL
  | BN_LLIL_UNIMPL_MEM

type bn_lowlevel_il_flag_condition = Typedefs.bn_lowlevel_il_flag_condition = 
  | BN_LLFC_E
  | BN_LLFC_NE
  | BN_LLFC_SLT
  | BN_LLFC_ULT
  | BN_LLFC_SLE
  | BN_LLFC_ULE
  | BN_LLFC_SGE
  | BN_LLFC_UGE
  | BN_LLFC_SGT
  | BN_LLFC_UGT
  | BN_LLFC_NEG
  | BN_LLFC_POS
  | BN_LLFC_O
  | BN_LLFC_NO

module Function =
struct
  type bn_lowlevelil_function = Typedefs.bn_lowlevelilfunction Ctypes.structure Ctypes_static.ptr

  let get_current_address lf =
    B.bnlow_level_ilget_current_address lf

  let set_current_address lf addr =
    B.bnlow_level_ilset_current_address lf addr
  
  let get_index_for_instruction lf index =
    B.bnget_low_level_ilindex_for_instruction lf index
      
  let get_instruction_count lf =
    Unsigned.Size_t.to_int (B.bnget_low_level_ilinstruction_count lf)

  let get_lowlevelil_by_index lf i =
    B.bnget_low_level_ilby_index lf i

  
  let get_instructions lf =
    let count = get_instruction_count lf in
    let rec loop acc i =
      match i with
      | _ when i=count -> acc
      | _ as n ->
        let instr = B.bnget_low_level_ilby_index lf (get_index_for_instruction lf (Unsigned.Size_t.of_int n)) in
        loop (instr::acc) (n+1)
    in
    loop [] 0

  let get_blocks lf =
    Utils.get_list_of_things lf B.bnget_low_level_ilbasic_block_list B.bnfree_basic_block_list B.bnnew_basic_block_reference
  
end
 
