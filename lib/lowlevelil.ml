open Ctypes
open Foreign

module B = Ffi_bindings.Bindings(Ffi_generated_types)(Ffi_generated)
module U = Utils
open Ffi_bindings
open B

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

let il_flag_condition_of_uint64 i =
  let tmp = Unsigned.UInt64.to_int64 i in
  match tmp with
  | _ when tmp= B.E.llfc_e -> BN_LLFC_E
  | _ when tmp= B.E.llfc_ne -> BN_LLFC_NE
  | _ when tmp= B.E.llfc_slt -> BN_LLFC_SLT
  | _ when tmp= B.E.llfc_ult -> BN_LLFC_ULT
  | _ when tmp= B.E.llfc_sle -> BN_LLFC_SLE
  | _ when tmp= B.E.llfc_ule -> BN_LLFC_ULE
  | _ when tmp= B.E.llfc_sge -> BN_LLFC_SGE
  | _ when tmp= B.E.llfc_uge -> BN_LLFC_UGE
  | _ when tmp= B.E.llfc_sgt -> BN_LLFC_SGT
  | _ when tmp= B.E.llfc_ugt -> BN_LLFC_UGT
  | _ when tmp= B.E.llfc_neg -> BN_LLFC_NEG
  | _ when tmp= B.E.llfc_pos -> BN_LLFC_POS
  | _ when tmp= B.E.llfc_o -> BN_LLFC_O
  | _ when tmp= B.E.llfc_no -> BN_LLFC_NO
  | _ -> assert false


module rec Instruction : sig
  type bn_lowlevelil_instruction = Typedefs.bn_low_level_il_instruction Ctypes.structure 
  type instruction

  type operand =
    | OpExpr of instruction
    | OpInteger of Unsigned.uint64
    | OpIntList of Unsigned.uint64 list
    | OpRegister of Unsigned.uint64 * string option
    | OpFlag of string
    | OpCond of bn_lowlevel_il_flag_condition

  
  val get_operation : instruction -> bn_low_level_il_operation
  val create : LowFunction.lowlevelilfunction -> bn_lowlevelil_instruction -> instruction
  val get_operands : instruction -> operand list
  val get_text : instruction -> string option
end
= 
struct
  type bn_lowlevelil_instruction = Typedefs.bn_low_level_il_instruction Ctypes.structure 


  type operand_purpose =
    | Dest
    | Src
    | Constant
    | Left
    | Right
    | Hi
    | Low
    | Targets
    | Condition
    | Vector
    | Output
    | Stack
    | Param
    | DestMem
    | SrcMem
    | True
    | False
    | Bit
    | Carry
    | FullReg

  type operand_type =
    | Reg
    | Expr
    | Flag
    | IntList
    | Int
    | RegSSA
    | RegSSAList
    | FlagSSA
    | Cond
    | FlagSSAList

  type instruction =
    {
      func :  LowFunction.lowlevelilfunction;
      instr : bn_lowlevelil_instruction;
      operands: operand list;
    }
  and operand =
    | OpExpr of instruction
    | OpInteger of Unsigned.uint64
    | OpIntList of Unsigned.uint64 list
    | OpRegister of Unsigned.uint64 * string option
    | OpFlag of string
    | OpCond of bn_lowlevel_il_flag_condition

  
  type op_syntax = operand_purpose * operand_type

  let get_op_syntax = function
    | BN_LLIL_NOP           -> [] 
    | BN_LLIL_SET_REG       -> [(Dest, Reg); (Src, Expr)]
    | BN_LLIL_SET_REG_SPLIT -> [(Hi, Reg); (Low, Reg); (Src, Expr)]
    | BN_LLIL_SET_FLAG      -> [(Dest, Flag); (Src, Expr)]
    | BN_LLIL_LOAD          -> [(Src, Expr)]
    | BN_LLIL_STORE         -> [(Dest, Expr); (Src, Expr)]
    | BN_LLIL_PUSH          -> [(Src, Expr)];
    | BN_LLIL_POP           -> [] 
    | BN_LLIL_REG           -> [(Src, Reg)]
    | BN_LLIL_CONST         -> [(Constant, Int)]
    | BN_LLIL_FLAG          -> [(Src, Flag)]
    | BN_LLIL_FLAG_BIT      -> [(Src, Flag); (Bit, Int)]
    | BN_LLIL_ADD           -> [(Left, Expr); (Right, Expr)]
    | BN_LLIL_ADC           -> [(Left, Expr); (Right, Expr); (Carry, Expr)]
    | BN_LLIL_SUB           -> [(Left, Expr); (Right, Expr)]
    | BN_LLIL_SBB           -> [(Left, Expr); (Right, Expr); (Carry, Expr)]
    | BN_LLIL_AND
    | BN_LLIL_OR
    | BN_LLIL_XOR
    | BN_LLIL_LSL
    | BN_LLIL_LSR
    | BN_LLIL_ASR
    | BN_LLIL_ROL           -> [(Left, Expr); (Right, Expr)]
    | BN_LLIL_RLC           -> [(Left, Expr); (Right, Expr); (Carry, Expr)]
    | BN_LLIL_ROR           -> [(Left, Expr); (Right, Expr)]
    | BN_LLIL_RRC           -> [(Left, Expr); (Right, Expr); (Carry, Expr)]
    | BN_LLIL_MUL
    | BN_LLIL_MULU_DP
    | BN_LLIL_MULS_DP
    | BN_LLIL_DIVU          -> [(Left, Expr); (Right, Expr)]
    | BN_LLIL_DIVU_DP       -> [(Hi, Expr); (Low, Expr); (Right, Expr)]
    | BN_LLIL_DIVS          -> [(Left, Expr); (Right, Expr)]
    | BN_LLIL_DIVS_DP       -> [(Hi, Expr); (Low, Expr); (Right, Expr)]
    | BN_LLIL_MODU          -> [(Left, Expr); (Right, Expr)]
    | BN_LLIL_MODU_DP       -> [(Hi, Expr); (Low, Expr); (Right, Expr)]
    | BN_LLIL_MODS          -> [(Left, Expr); (Right, Expr)]
    | BN_LLIL_MODS_DP       -> [(Hi, Expr); (Low, Expr); (Right, Expr)]
    | BN_LLIL_NEG
    | BN_LLIL_NOT
    | BN_LLIL_SX
    | BN_LLIL_ZX            -> [(Src, Expr)]
    | BN_LLIL_JUMP          -> [(Dest, Expr)]
    | BN_LLIL_JUMP_TO       -> [(Dest,Expr); (Targets, IntList)]
    | BN_LLIL_CALL          -> [(Dest, Expr)]
    | BN_LLIL_RET           -> [(Dest, Expr)]
    | BN_LLIL_NORET         -> []
    | BN_LLIL_IF            -> [(Condition, Expr); (True, Int); (False, Int)]
    | BN_LLIL_GOTO          -> [(Dest, Int)]
    | BN_LLIL_FLAG_COND     -> [(Condition, Cond)]
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
    | BN_LLIL_TEST_BIT      -> [(Left, Expr); (Right, Expr)]
    | BN_LLIL_BOOL_TO_INT   -> [(Src, Expr)]
    | BN_LLIL_SYSCALL       -> []
    | BN_LLIL_BP            -> []
    | BN_LLIL_TRAP          -> [(Vector, Int)]
    | BN_LLIL_UNDEF         -> []
    | BN_LLIL_UNIMPL        -> []
    | BN_LLIL_UNIMPL_MEM    -> [(Src, Expr)]

  let get_operation i =
    getf i.instr B.E.il_instruction_operation

  let get_size i =
    getf i.instr B.E.il_instruction_size

  let get_raw_operands i =
    let ops = getf i.instr B.E.il_instruction_operands in
    Array.of_list (CArray.to_list ops)

  let get_source_operand i =
    getf i.instr B.E.il_instruction_sourceOperand

  let get_address i =
    getf i.instr B.E.il_instruction_address

  let get_function i =
    i.func

  let get_operands i =
    i.operands

  let construct_operands func instr =
    let rawops = getf instr B.E.il_instruction_operands |> CArray.to_list |> Array.of_list in
    let operands = getf instr B.E.il_instruction_operation |> get_op_syntax  in
    List.mapi
      (fun i (n,optype) ->
         match optype with
         | Int -> OpInteger(rawops.(i))
         | Expr -> OpExpr(LowFunction.get_lowlevelil_by_index func (Utils.uint64_to_sizet rawops.(i)))
         | Reg ->
           if ((Unsigned.UInt64.logand rawops.(i) (Unsigned.UInt64.of_int 2147483648)) != Unsigned.UInt64.zero) then
             OpRegister(rawops.(i), None)
           else
             let arch = LowFunction.get_source_func func |> Function.get_architecture in
             let regname = Utils.uint64_to_uint32 rawops.(i) |> Architecture.get_reg_name arch in
             OpRegister(rawops.(i), Some regname)
         | Flag -> 
           let arch = LowFunction.get_source_func func |> Function.get_architecture in
             let flagname = Utils.uint64_to_uint32 rawops.(i) |> Architecture.get_flag_name arch in
             OpFlag(flagname)

         | Cond -> OpCond(il_flag_condition_of_uint64 rawops.(i))
         | _ -> assert false

      ) operands

  let create f i=
    { func = f;
      instr = i;
      operands = construct_operands f i;
    }

  (* DOES NOT WORK *)
  let _get_text func arch instr =
    let lf = LowFunction.get_function_lowlevel func in
    let create_instruction_text_token t =
      let token = make B.E.bninstruction_text_token in
      (* setf token B.E.bninstruction_text_token_type_ (getf t B.E.bninstruction_text_token_type_);  *)
      let ty =  (getf t B.E.bninstruction_text_token_type_) in
      (* setf token B.E.bninstruction_text_token_text (getf t B.E.bninstruction_text_token_text); *)
      setf token B.E.bninstruction_text_token_text "WOOHOO\n";
      (* setf token B.E.bninstruction_text_token_value (getf t B.E.bninstruction_text_token_value); *)
      token
    in
    let i = allocate size_t (Unsigned.Size_t.zero) in
    let tokenlist = (allocate B.E.bninstruction_text_token (make B.E.bninstruction_text_token)) in 
    let tokenlistptr = allocate (ptr B.E.bninstruction_text_token ) tokenlist in 
    let res = B.bnget_low_level_ilinstruction_text (LowFunction.get_func lf) func arch instr tokenlistptr i in  
    let rec loop sz acc i =
      match i with
      | _ when i=sz -> acc
      | _ as n ->
        let tk = create_instruction_text_token !@(tokenlist +@ n) in
        loop sz (tk :: acc) (n+1)
    in
    match res with
    | false -> None
    | true -> 
      begin
        let sz = Unsigned.Size_t.to_int !@i in
        let res = List.rev (loop sz [] 0) in
        (* B.bnfree_instruction_text tokenlist !@i; *)
        (* let str = List.fold_left (fun resstr token -> resstr ^ (getf token B.E.bninstruction_text_token_text)) "" res in *)
        let str = "hello matey\n" in
        Some str
      end

  let get_text instruction =
    let func = LowFunction.get_source_func (get_function instruction) in
    let arch = Function.get_architecture func in
    let addr = get_address instruction in
    _get_text func arch (Unsigned.Size_t.of_int64 (Unsigned.UInt64.to_int64 addr))

    
end

and LowFunction :
 sig
    
   type bn_lowlevelil_function = Typedefs.bn_lowlevelilfunction Ctypes.structure Ctypes_static.ptr

   type lowlevelilfunction

   val get_source_func : lowlevelilfunction -> Function.bn_function

   val get_func : lowlevelilfunction -> bn_lowlevelil_function 

    val get_current_address : lowlevelilfunction -> Unsigned.uint64

    val set_current_address : lowlevelilfunction -> Unsigned.uint64 -> unit

    val get_index_for_instruction : lowlevelilfunction -> Unsigned.size_t -> Unsigned.size_t

    val get_instruction_count : lowlevelilfunction -> int

    val get_lowlevelil_by_index : lowlevelilfunction -> Unsigned.size_t -> Instruction.instruction

    val get_instructions : lowlevelilfunction -> Instruction.instruction list

    val get_function_lowlevel : Function.bn_function -> lowlevelilfunction
  end
=
struct
  type bn_lowlevelil_function = Typedefs.bn_lowlevelilfunction Ctypes.structure Ctypes_static.ptr

  type lowlevelilfunction =
    {
      arch: Architecture.bn_architecture;
      func: bn_lowlevelil_function;
      source_func : Function.bn_function;
    }

  let create f a source_func =
    {arch = a; func = f; source_func = source_func}

  let get_func f =
    f.func

  let get_source_func f =
    f.source_func

  let get_arch f =
    f.arch
  
  let get_current_address f =
    B.bnlow_level_ilget_current_address f.func

  let set_current_address f addr =
    B.bnlow_level_ilset_current_address f.func addr

  let get_index_for_instruction f index =
    B.bnget_low_level_ilindex_for_instruction f.func index

  let get_instruction_count f =
    Unsigned.Size_t.to_int (B.bnget_low_level_ilinstruction_count f.func)

  let get_lowlevelil_by_index f i =
    let ins =  B.bnget_low_level_ilby_index f.func i in
    Instruction.create f ins

  let get_instructions lf =
    let count = get_instruction_count lf in
    let rec loop acc i =
      match i with
      | _ when i=count -> acc
      | _ as n ->
        let instr = get_lowlevelil_by_index lf (get_index_for_instruction lf (Unsigned.Size_t.of_int n)) in
        loop (instr::acc) (n+1)
    in
    loop [] 0

  let get_blocks lf =
  Utils.get_list_of_things lf B.bnget_low_level_ilbasic_block_list B.bnfree_basic_block_list B.bnnew_basic_block_reference

  let get_function_lowlevel f =
    let lf = B.bnget_function_low_level_il f in
    let arch= Function.get_architecture f in
    { arch = arch; func = lf; source_func = f}

end

