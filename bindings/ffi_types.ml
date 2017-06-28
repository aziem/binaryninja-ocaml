open Typedefs


module Enums (T : Cstubs_structs.TYPE) =
struct

  let earlypluginloadorder = T.constant "EarlyPluginLoadOrder" T.int64_t
  let normalpluginloadorder = T.constant "NormalPluginLoadOrder" T.int64_t
  let latepluginloadorder = T.constant "LatePluginLoadOrder" T.int64_t

  let bn_plugin_load_order = T.enum "BNPluginLoadOrder" [
      BN_EarlyPluginLoadOrder, earlypluginloadorder;
      BN_NormalPluginLoadOrder, normalpluginloadorder;
      BN_LatePluginLoadOrder, latepluginloadorder
    ]

  let debuglog = T.constant "DebugLog" T.int64_t
  let infolog = T.constant "InfoLog" T.int64_t
  let warninglog = T.constant "WarningLog" T.int64_t
  let errorlog = T.constant "ErrorLog" T.int64_t
  let alertlog = T.constant "AlertLog" T.int64_t

  let bn_log_level = T.enum "BNLogLevel" [
      BN_DebugLog, debuglog; 
      BN_InfoLog, infolog; 
      BN_WarningLog, warninglog;
      BN_ErrorLog, errorlog;
      BN_AlertLog, alertlog
    ]

  let littleendian = T.constant "LittleEndian" T.int64_t
  let bigendian = T.constant "BigEndian" T.int64_t

  let bn_endianness = T.enum "BNEndianness" [
      BN_LittleEndian, littleendian;
      BN_BigEndian, bigendian
    ]

  let original = T.constant "Original" T.int64_t
  let changed = T.constant "Changed" T.int64_t
  let inserted = T.constant "Inserted" T.int64_t

  let bn_modification_status = T.enum "BNModificationStatus" [
      BN_Original, original;
      BN_Changed, changed;
      BN_Inserted, inserted
    ]

  let binarycodectransform = T.constant "BinaryCodecTransform" T.int64_t
  let textcodectransform = T.constant "TextCodecTransform" T.int64_t
  let unicodecodectransform = T.constant "UnicodeCodecTransform" T.int64_t
  let decodetransform = T.constant "DecodeTransform" T.int64_t
  let binaryencodetransform = T.constant "BinaryEncodeTransform" T.int64_t
  let textencodetransform = T.constant "TextEncodeTransform" T.int64_t
  let encrypttransform = T.constant "EncryptTransform" T.int64_t
  let invertingtransform = T.constant "InvertingTransform" T.int64_t
  let hashtransform = T.constant "HashTransform" T.int64_t

  let bn_transform_type = T.enum "BNTransformType" [
      BN_BinaryCodecTransform, binarycodectransform; 
      BN_TextCodecTransform, textcodectransform;
      BN_UnicodeCodecTransform, unicodecodectransform; 
      BN_DecodeTransform, decodetransform; 
      BN_BinaryEncodeTransform, binaryencodetransform; 
      BN_TextEncodeTransform, textencodetransform; 
      BN_EncryptTransform, encrypttransform; 
      BN_InvertingTransform, invertingtransform; 
      BN_HashTransform, hashtransform
    ]

  let unconditionalbranch = T.constant "UnconditionalBranch" T.int64_t 
  let falsebranch = T.constant "FalseBranch" T.int64_t 
  let truebranch = T.constant "TrueBranch" T.int64_t 
  let calldestination = T.constant "CallDestination" T.int64_t 
  let functionreturn = T.constant "FunctionReturn" T.int64_t 
  let systemcall = T.constant "SystemCall" T.int64_t 
  let indirectbranch = T.constant "IndirectBranch" T.int64_t 
  let unresolvedbranch= T.constant "UnresolvedBranch" T.int64_t

  let bn_branch_type =
    T.enum "BNBranchType" [
      BN_UnconditionalBranch , unconditionalbranch;
      BN_FalseBranch , falsebranch;
      BN_TrueBranch , truebranch;
      BN_CallDestination , calldestination;
      BN_FunctionReturn , functionreturn;
      BN_SystemCall , systemcall;
      BN_IndirectBranch , indirectbranch;
      BN_UnresolvedBranch, unresolvedbranch
    ]


  let texttoken = T.constant "TextToken" T.int64_t
  let instructiontoken = T.constant "InstructionToken" T.int64_t
  let operandseparatortoken = T.constant "OperandSeparatorToken" T.int64_t
  let registertoken = T.constant "RegisterToken" T.int64_t
  let integertoken = T.constant "IntegerToken" T.int64_t
  let possibleaddresstoken = T.constant "PossibleAddressToken" T.int64_t
  let beginmemoryoperandtoken = T.constant "BeginMemoryOperandToken" T.int64_t
  let endmemoryoperandtoken = T.constant "EndMemoryOperandToken" T.int64_t
  let floatingpointtoken = T.constant "FloatingPointToken" T.int64_t
  let annotationtoken = T.constant "AnnotationToken" T.int64_t
  let coderelativeaddresstoken = T.constant "CodeRelativeAddressToken" T.int64_t
  let codesymboltoken = T.constant "CodeSymbolToken" T.int64_t
  let datasymboltoken = T.constant "DataSymbolToken" T.int64_t
  let stackvariabletoken = T.constant "StackVariableToken" T.int64_t
  let importtoken = T.constant "ImportToken" T.int64_t
  let addressdisplaytoken= T.constant "AddressDisplayToken" T.int64_t

  let bn_instruction_text_token_type =
    T.enum "BNInstructionTextTokenType"
      [
        BN_TextToken, texttoken;
	BN_InstructionToken, instructiontoken;
	BN_OperandSeparatorToken, operandseparatortoken;
	BN_RegisterToken, registertoken;
	BN_IntegerToken, integertoken;
	BN_PossibleAddressToken, possibleaddresstoken;
	BN_BeginMemoryOperandToken, beginmemoryoperandtoken;
	BN_EndMemoryOperandToken, endmemoryoperandtoken;
	BN_FloatingPointToken, floatingpointtoken;
	BN_AnnotationToken, annotationtoken;
	BN_CodeRelativeAddressToken, coderelativeaddresstoken;
	BN_CodeSymbolToken, codesymboltoken;
	BN_DataSymbolToken, datasymboltoken;
	BN_StackVariableToken, stackvariabletoken;
	BN_ImportToken, importtoken;
	BN_AddressDisplayToken, addressdisplaytoken;
      ]
  let unconditionalbranch = T.constant "UnconditionalBranch" T.int64_t 
  let falsebranch = T.constant "FalseBranch" T.int64_t 
  let truebranch = T.constant "TrueBranch" T.int64_t 
  let calldestination = T.constant "CallDestination" T.int64_t 
  let functionreturn = T.constant "FunctionReturn" T.int64_t 
  let systemcall = T.constant "SystemCall" T.int64_t 
  let indirectbranch = T.constant "IndirectBranch" T.int64_t 
  let unresolvedbranch= T.constant "UnresolvedBranch" T.int64_t

  let bn_branch_type =
    T.enum "BNBranchType" [
      BN_UnconditionalBranch , unconditionalbranch;
      BN_FalseBranch , falsebranch;
      BN_TrueBranch , truebranch;
      BN_CallDestination , calldestination;
      BN_FunctionReturn , functionreturn;
      BN_SystemCall , systemcall;
      BN_IndirectBranch , indirectbranch;
      BN_UnresolvedBranch, unresolvedbranch
    ]

  let texttoken = T.constant "TextToken" T.int64_t
  let instructiontoken = T.constant "InstructionToken" T.int64_t
  let operandseparatortoken = T.constant "OperandSeparatorToken" T.int64_t
  let registertoken = T.constant "RegisterToken" T.int64_t
  let integertoken = T.constant "IntegerToken" T.int64_t
  let possibleaddresstoken = T.constant "PossibleAddressToken" T.int64_t
  let beginmemoryoperandtoken = T.constant "BeginMemoryOperandToken" T.int64_t
  let endmemoryoperandtoken = T.constant "EndMemoryOperandToken" T.int64_t
  let floatingpointtoken = T.constant "FloatingPointToken" T.int64_t
  let annotationtoken = T.constant "AnnotationToken" T.int64_t
  let coderelativeaddresstoken = T.constant "CodeRelativeAddressToken" T.int64_t
  let codesymboltoken = T.constant "CodeSymbolToken" T.int64_t
  let datasymboltoken = T.constant "DataSymbolToken" T.int64_t
  let stackvariabletoken = T.constant "StackVariableToken" T.int64_t
  let importtoken = T.constant "ImportToken" T.int64_t
  let addressdisplaytoken= T.constant "AddressDisplayToken" T.int64_t

  let bn_instruction_text_token_type =
    T.enum "BNInstructionTextTokenType"
      [
        BN_TextToken, texttoken;
	BN_InstructionToken, instructiontoken;
	BN_OperandSeparatorToken, operandseparatortoken;
	BN_RegisterToken, registertoken;
	BN_IntegerToken, integertoken;
	BN_PossibleAddressToken, possibleaddresstoken;
	BN_BeginMemoryOperandToken, beginmemoryoperandtoken;
	BN_EndMemoryOperandToken, endmemoryoperandtoken;
	BN_FloatingPointToken, floatingpointtoken;
	BN_AnnotationToken, annotationtoken;
	BN_CodeRelativeAddressToken, coderelativeaddresstoken;
	BN_CodeSymbolToken, codesymboltoken;
	BN_DataSymbolToken, datasymboltoken;
	BN_StackVariableToken, stackvariabletoken;
	BN_ImportToken, importtoken;
	BN_AddressDisplayToken, addressdisplaytoken;
      ]

  let functionsymbol = T.constant "FunctionSymbol" T.int64_t
  let importaddresssymbol = T.constant "ImportAddressSymbol" T.int64_t
  let importedfunctionsymbol = T.constant "ImportedFunctionSymbol" T.int64_t
  let datasymbol = T.constant "DataSymbol" T.int64_t
  let importeddatasymbol= T.constant "ImportedDataSymbol" T.int64_t


  let bn_symbol_type =
    T.enum "BNSymbolType"
      [
        BN_FunctionSymbol, functionsymbol; 
	BN_ImportAddressSymbol, importaddresssymbol; 
	BN_ImportedFunctionSymbol, importedfunctionsymbol; 
	BN_DataSymbol, datasymbol; 
	BN_ImportedDataSymbol, importeddatasymbol;
      ]


  let temporaryaction = T.constant "TemporaryAction" T.int64_t
  let datamodificationaction = T.constant "DataModificationAction" T.int64_t
  let analysisaction = T.constant "AnalysisAction" T.int64_t
  let datamodificationandanalysisaction= T.constant "DataModificationAndAnalysisAction" T.int64_t


  let bn_action_type =
    T.enum "BNActionType"
      [
        BN_TemporaryAction, temporaryaction;
	BN_DataModificationAction, datamodificationaction;
	BN_AnalysisAction, analysisaction;
	BN_DataModificationAndAnalysisAction, datamodificationandanalysisaction;
      ]

  let llil_nop           = T.constant "LLIL_NOP" T.int64_t
  let llil_set_reg       = T.constant "LLIL_SET_REG" T.int64_t
  let llil_set_reg_split = T.constant "LLIL_SET_REG_SPLIT" T.int64_t
  let llil_set_flag      = T.constant "LLIL_SET_FLAG" T.int64_t
  let llil_load          = T.constant "LLIL_LOAD" T.int64_t
  let llil_store         = T.constant "LLIL_STORE" T.int64_t
  let llil_push          = T.constant "LLIL_PUSH" T.int64_t
  let llil_pop           = T.constant "LLIL_POP" T.int64_t
  let llil_reg           = T.constant "LLIL_REG" T.int64_t
  let llil_const         = T.constant "LLIL_CONST" T.int64_t
  let llil_flag          = T.constant "LLIL_FLAG" T.int64_t
  let llil_flag_bit      = T.constant "LLIL_FLAG_BIT" T.int64_t
  let llil_add           = T.constant "LLIL_ADD" T.int64_t
  let llil_adc           = T.constant "LLIL_ADC" T.int64_t
  let llil_sub           = T.constant "LLIL_SUB" T.int64_t
  let llil_sbb           = T.constant "LLIL_SBB" T.int64_t
  let llil_and           = T.constant "LLIL_AND" T.int64_t
  let llil_or            = T.constant "LLIL_OR" T.int64_t
  let llil_xor           = T.constant "LLIL_XOR" T.int64_t
  let llil_lsl           = T.constant "LLIL_LSL" T.int64_t
  let llil_lsr           = T.constant "LLIL_LSR" T.int64_t
  let llil_asr           = T.constant "LLIL_ASR" T.int64_t
  let llil_rol           = T.constant "LLIL_ROL" T.int64_t
  let llil_rlc           = T.constant "LLIL_RLC" T.int64_t
  let llil_ror           = T.constant "LLIL_ROR" T.int64_t
  let llil_rrc           = T.constant "LLIL_RRC" T.int64_t
  let llil_mul           = T.constant "LLIL_MUL" T.int64_t
  let llil_mulu_dp       = T.constant "LLIL_MULU_DP" T.int64_t
  let llil_muls_dp       = T.constant "LLIL_MULS_DP" T.int64_t
  let llil_divu          = T.constant "LLIL_DIVU" T.int64_t
  let llil_divu_dp       = T.constant "LLIL_DIVU_DP" T.int64_t
  let llil_divs          = T.constant "LLIL_DIVS" T.int64_t
  let llil_divs_dp       = T.constant "LLIL_DIVS_DP" T.int64_t
  let llil_modu          = T.constant "LLIL_MODU" T.int64_t
  let llil_modu_dp       = T.constant "LLIL_MODU_DP" T.int64_t
  let llil_mods          = T.constant "LLIL_MODS" T.int64_t
  let llil_mods_dp       = T.constant "LLIL_MODS_DP" T.int64_t
  let llil_neg           = T.constant "LLIL_NEG" T.int64_t
  let llil_not           = T.constant "LLIL_NOT" T.int64_t
  let llil_sx            = T.constant "LLIL_SX" T.int64_t
  let llil_zx            = T.constant "LLIL_ZX" T.int64_t
  let llil_jump          = T.constant "LLIL_JUMP" T.int64_t
  let llil_jump_to       = T.constant "LLIL_JUMP_TO" T.int64_t
  let llil_call          = T.constant "LLIL_CALL" T.int64_t
  let llil_ret           = T.constant "LLIL_RET" T.int64_t
  let llil_noret         = T.constant "LLIL_NORET" T.int64_t
  let llil_if            = T.constant "LLIL_IF" T.int64_t
  let llil_goto          = T.constant "LLIL_GOTO" T.int64_t
  let llil_flag_cond     = T.constant "LLIL_FLAG_COND" T.int64_t
  let llil_cmp_e         = T.constant "LLIL_CMP_E" T.int64_t
  let llil_cmp_ne        = T.constant "LLIL_CMP_NE" T.int64_t
  let llil_cmp_slt       = T.constant "LLIL_CMP_SLT" T.int64_t
  let llil_cmp_ult       = T.constant "LLIL_CMP_ULT" T.int64_t
  let llil_cmp_sle       = T.constant "LLIL_CMP_SLE" T.int64_t
  let llil_cmp_ule       = T.constant "LLIL_CMP_ULE" T.int64_t
  let llil_cmp_sge       = T.constant "LLIL_CMP_SGE" T.int64_t
  let llil_cmp_uge       = T.constant "LLIL_CMP_UGE" T.int64_t
  let llil_cmp_sgt       = T.constant "LLIL_CMP_SGT" T.int64_t
  let llil_cmp_ugt       = T.constant "LLIL_CMP_UGT" T.int64_t
  let llil_test_bit      = T.constant "LLIL_TEST_BIT" T.int64_t
  let llil_bool_to_int   = T.constant "LLIL_BOOL_TO_INT" T.int64_t
  let llil_syscall       = T.constant "LLIL_SYSCALL" T.int64_t
  let llil_bp            = T.constant "LLIL_BP" T.int64_t
  let llil_trap          = T.constant "LLIL_TRAP" T.int64_t
  let llil_undef         = T.constant "LLIL_UNDEF" T.int64_t
  let llil_unimpl        = T.constant "LLIL_UNIMPL" T.int64_t
  let llil_unimpl_mem     = T.constant "LLIL_UNIMPL_MEM" T.int64_t


  let bn_low_level_il_operation =
    T.enum "BNLowLevelILOperation"
      [
        BN_LLIL_NOP, llil_nop;
	BN_LLIL_SET_REG, llil_set_reg;
	BN_LLIL_SET_REG_SPLIT, llil_set_reg_split;
	BN_LLIL_SET_FLAG, llil_set_flag;
	BN_LLIL_LOAD, llil_load;
	BN_LLIL_STORE, llil_store;
	BN_LLIL_PUSH, llil_push;
	BN_LLIL_POP, llil_pop;
	BN_LLIL_REG, llil_reg;
	BN_LLIL_CONST, llil_const;
	BN_LLIL_FLAG, llil_flag;
	BN_LLIL_FLAG_BIT, llil_flag_bit;
	BN_LLIL_ADD, llil_add;
	BN_LLIL_ADC, llil_adc;
	BN_LLIL_SUB, llil_sub;
	BN_LLIL_SBB, llil_sbb;
	BN_LLIL_AND, llil_and;
	BN_LLIL_OR, llil_or;
	BN_LLIL_XOR, llil_xor;
	BN_LLIL_LSL, llil_lsl;
	BN_LLIL_LSR, llil_lsr;
	BN_LLIL_ASR, llil_asr;
	BN_LLIL_ROL, llil_rol;
	BN_LLIL_RLC, llil_rlc;
	BN_LLIL_ROR, llil_ror;
	BN_LLIL_RRC, llil_rrc;
	BN_LLIL_MUL, llil_mul;
	BN_LLIL_MULU_DP, llil_mulu_dp;
	BN_LLIL_MULS_DP, llil_muls_dp;
	BN_LLIL_DIVU, llil_divu;
	BN_LLIL_DIVU_DP, llil_divu_dp;
	BN_LLIL_DIVS, llil_divs;
	BN_LLIL_DIVS_DP, llil_divs_dp;
	BN_LLIL_MODU, llil_modu;
	BN_LLIL_MODU_DP, llil_modu_dp;
	BN_LLIL_MODS, llil_mods;
	BN_LLIL_MODS_DP, llil_mods_dp;
	BN_LLIL_NEG, llil_neg;
	BN_LLIL_NOT, llil_not;
	BN_LLIL_SX, llil_sx;
	BN_LLIL_ZX, llil_zx;
	BN_LLIL_JUMP, llil_jump;
	BN_LLIL_JUMP_TO, llil_jump_to;
	BN_LLIL_CALL, llil_call;
	BN_LLIL_RET, llil_ret;
	BN_LLIL_NORET, llil_noret;
	BN_LLIL_IF, llil_if;
	BN_LLIL_GOTO, llil_goto;
	BN_LLIL_FLAG_COND, llil_flag_cond;
	BN_LLIL_CMP_E, llil_cmp_e;
	BN_LLIL_CMP_NE, llil_cmp_ne;
	BN_LLIL_CMP_SLT, llil_cmp_slt;
	BN_LLIL_CMP_ULT, llil_cmp_ult;
	BN_LLIL_CMP_SLE, llil_cmp_sle;
	BN_LLIL_CMP_ULE, llil_cmp_ule;
	BN_LLIL_CMP_SGE, llil_cmp_sge;
	BN_LLIL_CMP_UGE, llil_cmp_uge;
	BN_LLIL_CMP_SGT, llil_cmp_sgt;
	BN_LLIL_CMP_UGT, llil_cmp_ugt;
	BN_LLIL_TEST_BIT, llil_test_bit;
	BN_LLIL_BOOL_TO_INT, llil_bool_to_int;
	BN_LLIL_SYSCALL, llil_syscall;
	BN_LLIL_BP, llil_bp;
	BN_LLIL_TRAP, llil_trap;
	BN_LLIL_UNDEF, llil_undef;
	BN_LLIL_UNIMPL, llil_unimpl;
	BN_LLIL_UNIMPL_MEM, llil_unimpl_mem;
      ]

  let llfc_e = T.constant "LLFC_E" T.int64_t
  let llfc_ne = T.constant "LLFC_NE" T.int64_t
  let llfc_slt = T.constant "LLFC_SLT" T.int64_t
  let llfc_ult = T.constant "LLFC_ULT" T.int64_t
  let llfc_sle = T.constant "LLFC_SLE" T.int64_t
  let llfc_ule = T.constant "LLFC_ULE" T.int64_t
  let llfc_sge = T.constant "LLFC_SGE" T.int64_t
  let llfc_uge = T.constant "LLFC_UGE" T.int64_t
  let llfc_sgt = T.constant "LLFC_SGT" T.int64_t
  let llfc_ugt = T.constant "LLFC_UGT" T.int64_t
  let llfc_neg = T.constant "LLFC_NEG" T.int64_t
  let llfc_pos = T.constant "LLFC_POS" T.int64_t
  let llfc_o = T.constant "LLFC_O" T.int64_t
  let llfc_no = T.constant "LLFC_NO" T.int64_t


  let bn_lowlevel_il_flag_condition =
    T.enum "BNLowLevelILFlagCondition"
      [
        BN_LLFC_E, llfc_e;
	BN_LLFC_NE, llfc_ne;
	BN_LLFC_SLT, llfc_slt;
	BN_LLFC_ULT, llfc_ult;
	BN_LLFC_SLE, llfc_sle;
	BN_LLFC_ULE, llfc_ule;
	BN_LLFC_SGE, llfc_sge;
	BN_LLFC_UGE, llfc_uge;
	BN_LLFC_SGT, llfc_sgt;
	BN_LLFC_UGT, llfc_ugt;
	BN_LLFC_NEG, llfc_neg;
	BN_LLFC_POS, llfc_pos;
	BN_LLFC_O, llfc_o;
	BN_LLFC_NO, llfc_no;
      ]

  let specialflagrole = T.constant "SpecialFlagRole" T.int64_t
  let zeroflagrole = T.constant "ZeroFlagRole" T.int64_t
  let positivesignflagrole = T.constant "PositiveSignFlagRole" T.int64_t
  let negativesignflagrole = T.constant "NegativeSignFlagRole" T.int64_t
  let carryflagrole = T.constant "CarryFlagRole" T.int64_t
  let overflowflagrole = T.constant "OverflowFlagRole" T.int64_t
  let halfcarryflagrole = T.constant "HalfCarryFlagRole" T.int64_t
  let evenparityflagrole = T.constant "EvenParityFlagRole" T.int64_t
  let oddparityflagrole = T.constant "OddParityFlagRole" T.int64_t


  let bn_flag_role =
    T.enum "BNFlagRole"
      [
        BN_SpecialFlagRole, specialflagrole;
	BN_ZeroFlagRole, zeroflagrole;
	BN_PositiveSignFlagRole, positivesignflagrole;
	BN_NegativeSignFlagRole, negativesignflagrole;
	BN_CarryFlagRole, carryflagrole;
	BN_OverflowFlagRole, overflowflagrole;
	BN_HalfCarryFlagRole, halfcarryflagrole;
	BN_EvenParityFlagRole, evenparityflagrole;
	BN_OddParityFlagRole, oddparityflagrole;
      ]

  let normalfunctiongraph = T.constant "NormalFunctionGraph" T.int64_t
  let lowlevelilfunctiongraph = T.constant "LowLevelILFunctionGraph" T.int64_t
  let liftedilfunctiongraph= T.constant "LiftedILFunctionGraph" T.int64_t

  let bn_function_graph_type =
    T.enum "BNFunctionGraphType"
      [
        BN_NormalFunctionGraph, normalfunctiongraph;
	BN_LowLevelILFunctionGraph, lowlevelilfunctiongraph;
	BN_LiftedILFunctionGraph, liftedilfunctiongraph;
      ]

  let voidtypeclass = T.constant "VoidTypeClass" T.int64_t 
  let booltypeclass = T.constant "BoolTypeClass" T.int64_t
  let integertypeclass = T.constant "IntegerTypeClass" T.int64_t
  let floattypeclass = T.constant "FloatTypeClass" T.int64_t
  let structuretypeclass = T.constant "StructureTypeClass" T.int64_t
  let enumerationtypeclass = T.constant "EnumerationTypeClass" T.int64_t
  let pointertypeclass = T.constant "PointerTypeClass" T.int64_t
  let arraytypeclass = T.constant "ArrayTypeClass" T.int64_t
  let functiontypeclass = T.constant "FunctionTypeClass" T.int64_t

  let bn_type_class =
    T.enum "BNTypeClass"
      [
	BN_VoidTypeClass , voidtypeclass;
	BN_BoolTypeClass , booltypeclass;
	BN_IntegerTypeClass , integertypeclass;
	BN_FloatTypeClass , floattypeclass;
	BN_StructureTypeClass , structuretypeclass;
	BN_EnumerationTypeClass , enumerationtypeclass;
	BN_PointerTypeClass , pointertypeclass;
	BN_ArrayTypeClass , arraytypeclass;
	BN_FunctionTypeClass , functiontypeclass;
      ]

  let asciistring = T.constant "AsciiString" T.int64_t
  let utf16string = T.constant "Utf16String" T.int64_t
  let utf32string= T.constant "Utf32String" T.int64_t

  let bn_string_type =
    T.enum "BNStringType"
      [
        BN_AsciiString , asciistring;
	BN_Utf16String , utf16string;
	BN_Utf32String, utf32string;
      ]

  let bn_low_level_il_instruction : bn_low_level_il_instruction Ctypes.structure T.typ = T.structure "BNLowLevelILInstruction"

  let operation = T.field bn_low_level_il_instruction "operation" bn_low_level_il_operation
  let size = T.field bn_low_level_il_instruction "size" T.size_t
  let flags = T.field bn_low_level_il_instruction "flags" T.uint32_t
  let sourceOperand = T.field bn_low_level_il_instruction "sourceOperand" T.uint32_t
  let operands = T.field bn_low_level_il_instruction "operands" (T.array 4 T.uint64_t)
  let address = T.field bn_low_level_il_instruction "address" T.uint64_t
  let () = T.seal bn_low_level_il_instruction


  let bn_low_level_il_label : bn_low_level_il_label Ctypes.structure T.typ = T.structure "BNLowLevelILLabel"

  let resolved = T.field bn_low_level_il_label "resolved" T.bool 
  let ref = T.field bn_low_level_il_label "ref" T.size_t 
  let operand = T.field bn_low_level_il_label "operand" T.size_t
  let () = T.seal bn_low_level_il_label


  let noextend= T.constant "NoExtend" T.int64_t
  let zeroextendtofullwidth= T.constant "ZeroExtendToFullWidth" T.int64_t
  let signextendtofullwidth= T.constant "SignExtendToFullWidth" T.int64_t

  let bn_implicit_register_extend =
    T.enum "BNImplicitRegisterExtend"
      [
        BN_NoExtend, noextend;
	BN_ZeroExtendToFullWidth, zeroextendtofullwidth;
	BN_SignExtendToFullWidth, signextendtofullwidth;
      ]

  type bn_register_info
  let bn_register_info : bn_register_info Ctypes.structure T.typ = T.structure "BNRegisterInfo"

  let fillwidthregister = T.field bn_register_info "fullWidthRegister" T.uint32_t
  let offset = T.field bn_register_info "offset" T.size_t 
  let size = T.field bn_register_info "size" T.size_t
  let extend = T.field bn_register_info "extend" bn_implicit_register_extend
  let () = T.seal bn_register_info

  let entryvalue= T.constant "EntryValue" T.int64_t
  let offsetfromentryvalue= T.constant "OffsetFromEntryValue" T.int64_t
  let constantvalue= T.constant "ConstantValue" T.int64_t
  let stackframeoffset= T.constant "StackFrameOffset" T.int64_t
  let undeterminedvalue= T.constant "UndeterminedValue" T.int64_t
  let offsetfromundeterminedvalue= T.constant "OffsetFromUndeterminedValue" T.int64_t
  let signedrangevalue= T.constant "SignedRangeValue" T.int64_t
  let unsignedrangevalue= T.constant "UnsignedRangeValue" T.int64_t
  let lookuptablevalue= T.constant "LookupTableValue" T.int64_t
  let comparisonresultvalue= T.constant "ComparisonResultValue" T.int64_t

  let bn_register_value_type =
    T.enum "BNRegisterValueType" [
      BN_EntryValue, entryvalue;
      BN_OffsetFromEntryValue, offsetfromentryvalue;
      BN_ConstantValue, constantvalue;
      BN_StackFrameOffset, stackframeoffset;
      BN_UndeterminedValue, undeterminedvalue;
      BN_OffsetFromUndeterminedValue, offsetfromundeterminedvalue;
      BN_SignedRangeValue, signedrangevalue;
      BN_UnsignedRangeValue, unsignedrangevalue;
      BN_LookupTableValue, lookuptablevalue;
      BN_ComparisonResultValue, comparisonresultvalue;
    ]

  let invalidscriptinput = T.constant "InvalidScriptInput" T.int64_t
  let incompletescriptinput = T.constant "IncompleteScriptInput" T.int64_t
  let successfulscriptexecution = T.constant "SuccessfulScriptExecution" T.int64_t

  let bnscriptingproviderexecuteresult = T.enum "BNScriptingProviderExecuteResult" [ 
      InvalidScriptInput, invalidscriptinput;
      IncompleteScriptInput, incompletescriptinput;
      SuccessfulScriptExecution, successfulscriptexecution;
    ]

  let notreadyforinput = T.constant "NotReadyForInput" T.int64_t
  let readyforscriptexecution = T.constant "ReadyForScriptExecution" T.int64_t
  let readyforscriptprograminput = T.constant "ReadyForScriptProgramInput" T.int64_t
  let bnscriptingproviderinputreadystate = T.enum "BNScriptingProviderInputReadyState" [ 
      NotReadyForInput, notreadyforinput;
      ReadyForScriptExecution, readyforscriptexecution;
      ReadyForScriptProgramInput, readyforscriptprograminput;
    ]

  let standardhighlightcolor = T.constant "StandardHighlightColor" T.int64_t
  let mixedhighlightcolor = T.constant "MixedHighlightColor" T.int64_t
  let customhighlightcolor = T.constant "CustomHighlightColor" T.int64_t
  let bnhighlightcolorstyle = T.enum "BNHighlightColorStyle" [ 
      StandardHighlightColor, standardhighlightcolor;
      MixedHighlightColor, mixedhighlightcolor;
      CustomHighlightColor, customhighlightcolor;
    ]
  let nohighlightcolor = T.constant "NoHighlightColor" T.int64_t
  let bluehighlightcolor = T.constant "BlueHighlightColor" T.int64_t
  let greenhighlightcolor = T.constant "GreenHighlightColor" T.int64_t
  let cyanhighlightcolor = T.constant "CyanHighlightColor" T.int64_t
  let redhighlightcolor = T.constant "RedHighlightColor" T.int64_t
  let magentahighlightcolor = T.constant "MagentaHighlightColor" T.int64_t
  let yellowhighlightcolor = T.constant "YellowHighlightColor" T.int64_t
  let orangehighlightcolor = T.constant "OrangeHighlightColor" T.int64_t
  let whitehighlightcolor = T.constant "WhiteHighlightColor" T.int64_t
  let blackhighlightcolor = T.constant "BlackHighlightColor" T.int64_t
  let bnhighlightstandardcolor = T.enum "BNHighlightStandardColor" [ 
      NoHighlightColor, nohighlightcolor;
      BlueHighlightColor, bluehighlightcolor;
      GreenHighlightColor, greenhighlightcolor;
      CyanHighlightColor, cyanhighlightcolor;
      RedHighlightColor, redhighlightcolor;
      MagentaHighlightColor, magentahighlightcolor;
      YellowHighlightColor, yellowhighlightcolor;
      OrangeHighlightColor, orangehighlightcolor;
      WhiteHighlightColor, whitehighlightcolor;
      BlackHighlightColor, blackhighlightcolor;
    ]

  let informationicon = T.constant "InformationIcon" T.int64_t
  let questionicon = T.constant "QuestionIcon" T.int64_t
  let warningicon = T.constant "WarningIcon" T.int64_t
  let erroricon = T.constant "ErrorIcon" T.int64_t
  let bnmessageboxicon = T.enum "BNMessageBoxIcon" [ 
      InformationIcon, informationicon;
      QuestionIcon, questionicon;
      WarningIcon, warningicon;
      ErrorIcon, erroricon;
    ]

  let okbuttonset = T.constant "OKButtonSet" T.int64_t
  let yesnobuttonset = T.constant "YesNoButtonSet" T.int64_t
  let yesnocancelbuttonset = T.constant "YesNoCancelButtonSet" T.int64_t
  let bnmessageboxbuttonset = T.enum "BNMessageBoxButtonSet" [ 
      OKButtonSet, okbuttonset;
      YesNoButtonSet, yesnobuttonset;
      YesNoCancelButtonSet, yesnocancelbuttonset;
    ]

  let nobutton = T.constant "NoButton" T.int64_t
  let yesbutton = T.constant "YesButton" T.int64_t
  let okbutton = T.constant "OKButton" T.int64_t
  let cancelbutton = T.constant "CancelButton" T.int64_t
  let bnmessageboxbuttonresult = T.enum "BNMessageBoxButtonResult" [ 
      NoButton, nobutton;
      YesButton, yesbutton;
      OKButton, okbutton;
      CancelButton, cancelbutton;
    ]

  let labelformfield = T.constant "LabelFormField" T.int64_t
  let separatorformfield = T.constant "SeparatorFormField" T.int64_t
  let textlineformfield = T.constant "TextLineFormField" T.int64_t
  let multilinetextformfield = T.constant "MultilineTextFormField" T.int64_t
  let integerformfield = T.constant "IntegerFormField" T.int64_t
  let addressformfield = T.constant "AddressFormField" T.int64_t
  let choiceformfield = T.constant "ChoiceFormField" T.int64_t
  let openfilenameformfield = T.constant "OpenFileNameFormField" T.int64_t
  let savefilenameformfield = T.constant "SaveFileNameFormField" T.int64_t
  let directorynameformfield = T.constant "DirectoryNameFormField" T.int64_t
  let bnforminputfieldtype = T.enum "BNFormInputFieldType" [ 
      LabelFormField, labelformfield;
      SeparatorFormField, separatorformfield;
      TextLineFormField, textlineformfield;
      MultilineTextFormField, multilinetextformfield;
      IntegerFormField, integerformfield;
      AddressFormField, addressformfield;
      ChoiceFormField, choiceformfield;
      OpenFileNameFormField, openfilenameformfield;
      SaveFileNameFormField, savefilenameformfield;
      DirectoryNameFormField, directorynameformfield;
    ]

  let defaultintegerdisplaytype = T.constant "DefaultIntegerDisplayType" T.int64_t
  let binarydisplaytype = T.constant "BinaryDisplayType" T.int64_t
  let signedoctaldisplaytype = T.constant "SignedOctalDisplayType" T.int64_t
  let unsignedoctaldisplaytype = T.constant "UnsignedOctalDisplayType" T.int64_t
  let signeddecimaldisplaytype = T.constant "SignedDecimalDisplayType" T.int64_t
  let unsigneddecimaldisplaytype = T.constant "UnsignedDecimalDisplayType" T.int64_t
  let signedhexadecimaldisplaytype = T.constant "SignedHexadecimalDisplayType" T.int64_t
  let unsignedhexadecimaldisplaytype = T.constant "UnsignedHexadecimalDisplayType" T.int64_t
  let characterconstantdisplaytype = T.constant "CharacterConstantDisplayType" T.int64_t
  let bnintegerdisplaytype = T.enum "BNIntegerDisplayType" [ 
      DefaultIntegerDisplayType, defaultintegerdisplaytype;
      BinaryDisplayType, binarydisplaytype;
      SignedOctalDisplayType, signedoctaldisplaytype;
      UnsignedOctalDisplayType, unsignedoctaldisplaytype;
      SignedDecimalDisplayType, signeddecimaldisplaytype;
      UnsignedDecimalDisplayType, unsigneddecimaldisplaytype;
      SignedHexadecimalDisplayType, signedhexadecimaldisplaytype;
      UnsignedHexadecimalDisplayType, unsignedhexadecimaldisplaytype;
      CharacterConstantDisplayType, characterconstantdisplaytype;
    ]

  let blanklinetype = T.constant "BlankLineType" T.int64_t
  let codedisassemblylinetype = T.constant "CodeDisassemblyLineType" T.int64_t
  let datavariablelinetype = T.constant "DataVariableLineType" T.int64_t
  let hexdumplinetype = T.constant "HexDumpLineType" T.int64_t
  let functionheaderlinetype = T.constant "FunctionHeaderLineType" T.int64_t
  let functionheaderstartlinetype = T.constant "FunctionHeaderStartLineType" T.int64_t
  let functionheaderendlinetype = T.constant "FunctionHeaderEndLineType" T.int64_t
  let functioncontinuationlinetype = T.constant "FunctionContinuationLineType" T.int64_t
  let stackvariablelinetype = T.constant "StackVariableLineType" T.int64_t
  let stackvariablelistendlinetype = T.constant "StackVariableListEndLineType" T.int64_t
  let functionendlinetype = T.constant "FunctionEndLineType" T.int64_t
  let notestartlinetype = T.constant "NoteStartLineType" T.int64_t
  let notelinetype = T.constant "NoteLineType" T.int64_t
  let noteendlinetype = T.constant "NoteEndLineType" T.int64_t
  let sectionstartlinetype = T.constant "SectionStartLineType" T.int64_t
  let sectionendlinetype = T.constant "SectionEndLineType" T.int64_t
  let sectionseparatorlinetype = T.constant "SectionSeparatorLineType" T.int64_t
  let noncontiguousseparatorlinetype = T.constant "NonContiguousSeparatorLineType" T.int64_t
  let bnlineardisassemblylinetype = T.enum "BNLinearDisassemblyLineType" [ 
      BlankLineType, blanklinetype;
      CodeDisassemblyLineType, codedisassemblylinetype;
      DataVariableLineType, datavariablelinetype;
      HexDumpLineType, hexdumplinetype;
      FunctionHeaderLineType, functionheaderlinetype;
      FunctionHeaderStartLineType, functionheaderstartlinetype;
      FunctionHeaderEndLineType, functionheaderendlinetype;
      FunctionContinuationLineType, functioncontinuationlinetype;
      StackVariableLineType, stackvariablelinetype;
      StackVariableListEndLineType, stackvariablelistendlinetype;
      FunctionEndLineType, functionendlinetype;
      NoteStartLineType, notestartlinetype;
      NoteLineType, notelinetype;
      NoteEndLineType, noteendlinetype;
      SectionStartLineType, sectionstartlinetype;
      SectionEndLineType, sectionendlinetype;
      SectionSeparatorLineType, sectionseparatorlinetype;
      NonContiguousSeparatorLineType, noncontiguousseparatorlinetype;
    ]


  let showaddress = T.constant "ShowAddress" T.int64_t
  let showopcode = T.constant "ShowOpcode" T.int64_t
  let expandlongopcode = T.constant "ExpandLongOpcode" T.int64_t
  let grouplineardisassemblyfunctions = T.constant "GroupLinearDisassemblyFunctions" T.int64_t
  let showbasicblockregisterstate = T.constant "ShowBasicBlockRegisterState" T.int64_t
  let showflagusage = T.constant "ShowFlagUsage" T.int64_t
  let bndisassemblyoption = T.enum "BNDisassemblyOption" [ 
      ShowAddress, showaddress;
      ShowOpcode, showopcode;
      ExpandLongOpcode, expandlongopcode;
      GroupLinearDisassemblyFunctions, grouplineardisassemblyfunctions;
      ShowBasicBlockRegisterState, showbasicblockregisterstate;
      ShowFlagUsage, showflagusage;
    ]

  let classstructuretype = T.constant "ClassStructureType" T.int64_t
  let structstructuretype = T.constant "StructStructureType" T.int64_t
  let unionstructuretype = T.constant "UnionStructureType" T.int64_t
  let bnstructuretype = T.enum "BNStructureType" [ 
      ClassStructureType, classstructuretype;
      StructStructureType, structstructuretype;
      UnionStructureType, unionstructuretype;
    ]
  let noscope = T.constant "NoScope" T.int64_t
  let staticscope = T.constant "StaticScope" T.int64_t
  let virtualscope = T.constant "VirtualScope" T.int64_t
  let thunkscope = T.constant "ThunkScope" T.int64_t
  let bnmemberscope = T.enum "BNMemberScope" [ 
      NoScope, noscope;
      StaticScope, staticscope;
      VirtualScope, virtualscope;
      ThunkScope, thunkscope;
    ]

  let noaccess = T.constant "NoAccess" T.int64_t
  let privateaccess = T.constant "PrivateAccess" T.int64_t
  let protectedaccess = T.constant "ProtectedAccess" T.int64_t
  let publicaccess = T.constant "PublicAccess" T.int64_t
  let bnmemberaccess = T.enum "BNMemberAccess" [ 
      NoAccess, noaccess;
      PrivateAccess, privateaccess;
      ProtectedAccess, protectedaccess;
      PublicAccess, publicaccess;
    ]
  let pointerreferencetype = T.constant "PointerReferenceType" T.int64_t
  let referencereferencetype = T.constant "ReferenceReferenceType" T.int64_t
  let rvaluereferencetype = T.constant "RValueReferenceType" T.int64_t
  let noreference = T.constant "NoReference" T.int64_t
  let bnreferencetype = T.enum "BNReferenceType" [ 
      PointerReferenceType, pointerreferencetype;
      ReferenceReferenceType, referencereferencetype;
      RValueReferenceType, rvaluereferencetype;
      NoReference, noreference;
    ]

  let ptr64suffix = T.constant "Ptr64Suffix" T.int64_t
  let unalignedsuffix = T.constant "UnalignedSuffix" T.int64_t
  let restrictsuffix = T.constant "RestrictSuffix" T.int64_t
  let referencesuffix = T.constant "ReferenceSuffix" T.int64_t
  let lvaluesuffix = T.constant "LvalueSuffix" T.int64_t
  let bnpointersuffix = T.enum "BNPointerSuffix" [ 
      Ptr64Suffix, ptr64suffix;
      UnalignedSuffix, unalignedsuffix;
      RestrictSuffix, restrictsuffix;
      ReferenceSuffix, referencesuffix;
      LvalueSuffix, lvaluesuffix;
    ]

  let nonametype = T.constant "NoNameType" T.int64_t
  let constructornametype = T.constant "ConstructorNameType" T.int64_t
  let destructornametype = T.constant "DestructorNameType" T.int64_t
  let operatornewnametype = T.constant "OperatorNewNameType" T.int64_t
  let operatordeletenametype = T.constant "OperatorDeleteNameType" T.int64_t
  let operatorassignnametype = T.constant "OperatorAssignNameType" T.int64_t
  let operatorrightshiftnametype = T.constant "OperatorRightShiftNameType" T.int64_t
  let operatorleftshiftnametype = T.constant "OperatorLeftShiftNameType" T.int64_t
  let operatornotnametype = T.constant "OperatorNotNameType" T.int64_t
  let operatorequalnametype = T.constant "OperatorEqualNameType" T.int64_t
  let operatornotequalnametype = T.constant "OperatorNotEqualNameType" T.int64_t
  let operatorarraynametype = T.constant "OperatorArrayNameType" T.int64_t
  let operatorarrownametype = T.constant "OperatorArrowNameType" T.int64_t
  let operatorstarnametype = T.constant "OperatorStarNameType" T.int64_t
  let operatorincrementnametype = T.constant "OperatorIncrementNameType" T.int64_t
  let operatordecrementnametype = T.constant "OperatorDecrementNameType" T.int64_t
  let operatorminusnametype = T.constant "OperatorMinusNameType" T.int64_t
  let operatorplusnametype = T.constant "OperatorPlusNameType" T.int64_t
  let operatorbitandnametype = T.constant "OperatorBitAndNameType" T.int64_t
  let operatorarrowstarnametype = T.constant "OperatorArrowStarNameType" T.int64_t
  let operatordividenametype = T.constant "OperatorDivideNameType" T.int64_t
  let operatormodulusnametype = T.constant "OperatorModulusNameType" T.int64_t
  let operatorlessthannametype = T.constant "OperatorLessThanNameType" T.int64_t
  let operatorlessthanequalnametype = T.constant "OperatorLessThanEqualNameType" T.int64_t
  let operatorgreaterthannametype = T.constant "OperatorGreaterThanNameType" T.int64_t
  let operatorgreaterthanequalnametype = T.constant "OperatorGreaterThanEqualNameType" T.int64_t
  let operatorcommanametype = T.constant "OperatorCommaNameType" T.int64_t
  let operatorparenthesesnametype = T.constant "OperatorParenthesesNameType" T.int64_t
  let operatortildenametype = T.constant "OperatorTildeNameType" T.int64_t
  let operatorxornametype = T.constant "OperatorXorNameType" T.int64_t
  let operatorbitornametype = T.constant "OperatorBitOrNameType" T.int64_t
  let operatorlogicalandnametype = T.constant "OperatorLogicalAndNameType" T.int64_t
  let operatorlogicalornametype = T.constant "OperatorLogicalOrNameType" T.int64_t
  let operatorstarequalnametype = T.constant "OperatorStarEqualNameType" T.int64_t
  let operatorplusequalnametype = T.constant "OperatorPlusEqualNameType" T.int64_t
  let operatorminusequalnametype = T.constant "OperatorMinusEqualNameType" T.int64_t
  let operatordivideequalnametype = T.constant "OperatorDivideEqualNameType" T.int64_t
  let operatormodulusequalnametype = T.constant "OperatorModulusEqualNameType" T.int64_t
  let operatorrightshiftequalnametype = T.constant "OperatorRightShiftEqualNameType" T.int64_t
  let operatorleftshiftequalnametype = T.constant "OperatorLeftShiftEqualNameType" T.int64_t
  let operatorandequalnametype = T.constant "OperatorAndEqualNameType" T.int64_t
  let operatororequalnametype = T.constant "OperatorOrEqualNameType" T.int64_t
  let operatorxorequalnametype = T.constant "OperatorXorEqualNameType" T.int64_t
  let vftablenametype = T.constant "VFTableNameType" T.int64_t
  let vbtablenametype = T.constant "VBTableNameType" T.int64_t
  let vcallnametype = T.constant "VCallNameType" T.int64_t
  let typeofnametype = T.constant "TypeofNameType" T.int64_t
  let localstaticguardnametype = T.constant "LocalStaticGuardNameType" T.int64_t
  let stringnametype = T.constant "StringNameType" T.int64_t
  let vbasedestructornametype = T.constant "VBaseDestructorNameType" T.int64_t
  let vectordeletingdestructornametype = T.constant "VectorDeletingDestructorNameType" T.int64_t
  let defaultconstructorclosurenametype = T.constant "DefaultConstructorClosureNameType" T.int64_t
  let scalardeletingdestructornametype = T.constant "ScalarDeletingDestructorNameType" T.int64_t
  let vectorconstructoriteratornametype = T.constant "VectorConstructorIteratorNameType" T.int64_t
  let vectordestructoriteratornametype = T.constant "VectorDestructorIteratorNameType" T.int64_t
  let vectorvbaseconstructoriteratorenametype = T.constant "VectorVBaseConstructorIteratoreNameType" T.int64_t
  let virtualdisplacementmapnametype = T.constant "VirtualDisplacementMapNameType" T.int64_t
  let ehvectorconstructoriteratornametype = T.constant "EHVectorConstructorIteratorNameType" T.int64_t
  let ehvectordestructoriteratornametype = T.constant "EHVectorDestructorIteratorNameType" T.int64_t
  let ehvectorvbaseconstructoriteratornametype = T.constant "EHVectorVBaseConstructorIteratorNameType" T.int64_t
  let copyconstructorclosurenametype = T.constant "CopyConstructorClosureNameType" T.int64_t
  let udtreturningnametype = T.constant "UDTReturningNameType" T.int64_t
  let localvftablenametype = T.constant "LocalVFTableNameType" T.int64_t
  let localvftableconstructorclosurenametype = T.constant "LocalVFTableConstructorClosureNameType" T.int64_t
  let operatornewarraynametype = T.constant "OperatorNewArrayNameType" T.int64_t
  let operatordeletearraynametype = T.constant "OperatorDeleteArrayNameType" T.int64_t
  let placementdeleteclosurenametype = T.constant "PlacementDeleteClosureNameType" T.int64_t
  let placementdeleteclosurearraynametype = T.constant "PlacementDeleteClosureArrayNameType" T.int64_t
  let operatorreturntypenametype = T.constant "OperatorReturnTypeNameType" T.int64_t
  let rttitypedescriptor = T.constant "RttiTypeDescriptor" T.int64_t
  let rttibaseclassdescriptor = T.constant "RttiBaseClassDescriptor" T.int64_t
  let rttibaseclassarray = T.constant "RttiBaseClassArray" T.int64_t
  let rtticlassheirarchydescriptor = T.constant "RttiClassHeirarchyDescriptor" T.int64_t
  let rtticompleteobjectlocator = T.constant "RttiCompleteObjectLocator" T.int64_t
  let operatorunaryminusnametype = T.constant "OperatorUnaryMinusNameType" T.int64_t
  let operatorunaryplusnametype = T.constant "OperatorUnaryPlusNameType" T.int64_t
  let operatorunarybitandnametype = T.constant "OperatorUnaryBitAndNameType" T.int64_t
  let operatorunarystarnametype = T.constant "OperatorUnaryStarNameType" T.int64_t
  let bnnametype = T.enum "BNNameType" [ 
      NoNameType, nonametype;
      ConstructorNameType, constructornametype;
      DestructorNameType, destructornametype;
      OperatorNewNameType, operatornewnametype;
      OperatorDeleteNameType, operatordeletenametype;
      OperatorAssignNameType, operatorassignnametype;
      OperatorRightShiftNameType, operatorrightshiftnametype;
      OperatorLeftShiftNameType, operatorleftshiftnametype;
      OperatorNotNameType, operatornotnametype;
      OperatorEqualNameType, operatorequalnametype;
      OperatorNotEqualNameType, operatornotequalnametype;
      OperatorArrayNameType, operatorarraynametype;
      OperatorArrowNameType, operatorarrownametype;
      OperatorStarNameType, operatorstarnametype;
      OperatorIncrementNameType, operatorincrementnametype;
      OperatorDecrementNameType, operatordecrementnametype;
      OperatorMinusNameType, operatorminusnametype;
      OperatorPlusNameType, operatorplusnametype;
      OperatorBitAndNameType, operatorbitandnametype;
      OperatorArrowStarNameType, operatorarrowstarnametype;
      OperatorDivideNameType, operatordividenametype;
      OperatorModulusNameType, operatormodulusnametype;
      OperatorLessThanNameType, operatorlessthannametype;
      OperatorLessThanEqualNameType, operatorlessthanequalnametype;
      OperatorGreaterThanNameType, operatorgreaterthannametype;
      OperatorGreaterThanEqualNameType, operatorgreaterthanequalnametype;
      OperatorCommaNameType, operatorcommanametype;
      OperatorParenthesesNameType, operatorparenthesesnametype;
      OperatorTildeNameType, operatortildenametype;
      OperatorXorNameType, operatorxornametype;
      OperatorBitOrNameType, operatorbitornametype;
      OperatorLogicalAndNameType, operatorlogicalandnametype;
      OperatorLogicalOrNameType, operatorlogicalornametype;
      OperatorStarEqualNameType, operatorstarequalnametype;
      OperatorPlusEqualNameType, operatorplusequalnametype;
      OperatorMinusEqualNameType, operatorminusequalnametype;
      OperatorDivideEqualNameType, operatordivideequalnametype;
      OperatorModulusEqualNameType, operatormodulusequalnametype;
      OperatorRightShiftEqualNameType, operatorrightshiftequalnametype;
      OperatorLeftShiftEqualNameType, operatorleftshiftequalnametype;
      OperatorAndEqualNameType, operatorandequalnametype;
      OperatorOrEqualNameType, operatororequalnametype;
      OperatorXorEqualNameType, operatorxorequalnametype;
      VFTableNameType, vftablenametype;
      VBTableNameType, vbtablenametype;
      VCallNameType, vcallnametype;
      TypeofNameType, typeofnametype;
      LocalStaticGuardNameType, localstaticguardnametype;
      StringNameType, stringnametype;
      VBaseDestructorNameType, vbasedestructornametype;
      VectorDeletingDestructorNameType, vectordeletingdestructornametype;
      DefaultConstructorClosureNameType, defaultconstructorclosurenametype;
      ScalarDeletingDestructorNameType, scalardeletingdestructornametype;
      VectorConstructorIteratorNameType, vectorconstructoriteratornametype;
      VectorDestructorIteratorNameType, vectordestructoriteratornametype;
      VectorVBaseConstructorIteratoreNameType, vectorvbaseconstructoriteratorenametype;
      VirtualDisplacementMapNameType, virtualdisplacementmapnametype;
      EHVectorConstructorIteratorNameType, ehvectorconstructoriteratornametype;
      EHVectorDestructorIteratorNameType, ehvectordestructoriteratornametype;
      EHVectorVBaseConstructorIteratorNameType, ehvectorvbaseconstructoriteratornametype;
      CopyConstructorClosureNameType, copyconstructorclosurenametype;
      UDTReturningNameType, udtreturningnametype;
      LocalVFTableNameType, localvftablenametype;
      LocalVFTableConstructorClosureNameType, localvftableconstructorclosurenametype;
      OperatorNewArrayNameType, operatornewarraynametype;
      OperatorDeleteArrayNameType, operatordeletearraynametype;
      PlacementDeleteClosureNameType, placementdeleteclosurenametype;
      PlacementDeleteClosureArrayNameType, placementdeleteclosurearraynametype;
      OperatorReturnTypeNameType, operatorreturntypenametype;
      RttiTypeDescriptor, rttitypedescriptor;
      RttiBaseClassDescriptor, rttibaseclassdescriptor;
      RttiBaseClassArray, rttibaseclassarray;
      RttiClassHeirarchyDescriptor, rtticlassheirarchydescriptor;
      RttiCompleteObjectLocator, rtticompleteobjectlocator;
      OperatorUnaryMinusNameType, operatorunaryminusnametype;
      OperatorUnaryPlusNameType, operatorunaryplusnametype;
      OperatorUnaryBitAndNameType, operatorunarybitandnametype;
      OperatorUnaryStarNameType, operatorunarystarnametype;
    ]

  let nocallingconvention = T.constant "NoCallingConvention" T.int64_t
  let cdeclcallingconvention = T.constant "CdeclCallingConvention" T.int64_t
  let pascalcallingconvention = T.constant "PascalCallingConvention" T.int64_t
  let thiscallcallingconvention = T.constant "ThisCallCallingConvention" T.int64_t
  let stdcallcallingconvention = T.constant "STDCallCallingConvention" T.int64_t
  let fastcallcallingconvention = T.constant "FastcallCallingConvention" T.int64_t
  let clrcallcallingconvention = T.constant "CLRCallCallingConvention" T.int64_t
  let eabicallcallingconvention = T.constant "EabiCallCallingConvention" T.int64_t
  let vectorcallcallingconvention = T.constant "VectorCallCallingConvention" T.int64_t
  let bncallingconventionname = T.enum "BNCallingConventionName" [ 
      NoCallingConvention, nocallingconvention;
      CdeclCallingConvention, cdeclcallingconvention;
      PascalCallingConvention, pascalcallingconvention;
      ThisCallCallingConvention, thiscallcallingconvention;
      STDCallCallingConvention, stdcallcallingconvention;
      FastcallCallingConvention, fastcallcallingconvention;
      CLRCallCallingConvention, clrcallcallingconvention;
      EabiCallCallingConvention, eabicallcallingconvention;
      VectorCallCallingConvention, vectorcallcallingconvention;
    ]

  let defaultintegerdisplaytype = T.constant "DefaultIntegerDisplayType" T.int64_t
  let binarydisplaytype = T.constant "BinaryDisplayType" T.int64_t
  let signedoctaldisplaytype = T.constant "SignedOctalDisplayType" T.int64_t
  let unsignedoctaldisplaytype = T.constant "UnsignedOctalDisplayType" T.int64_t
  let signeddecimaldisplaytype = T.constant "SignedDecimalDisplayType" T.int64_t
  let unsigneddecimaldisplaytype = T.constant "UnsignedDecimalDisplayType" T.int64_t
  let signedhexadecimaldisplaytype = T.constant "SignedHexadecimalDisplayType" T.int64_t
  let unsignedhexadecimaldisplaytype = T.constant "UnsignedHexadecimalDisplayType" T.int64_t
  let characterconstantdisplaytype = T.constant "CharacterConstantDisplayType" T.int64_t
  let bnintegerdisplaytype = T.enum "BNIntegerDisplayType" [ 
      DefaultIntegerDisplayType, defaultintegerdisplaytype;
      BinaryDisplayType, binarydisplaytype;
      SignedOctalDisplayType, signedoctaldisplaytype;
      UnsignedOctalDisplayType, unsignedoctaldisplaytype;
      SignedDecimalDisplayType, signeddecimaldisplaytype;
      UnsignedDecimalDisplayType, unsigneddecimaldisplaytype;
      SignedHexadecimalDisplayType, signedhexadecimaldisplaytype;
      UnsignedHexadecimalDisplayType, unsignedhexadecimaldisplaytype;
      CharacterConstantDisplayType, characterconstantdisplaytype;
    ]

  let noextend = T.constant "NoExtend" T.int64_t
  let zeroextendtofullwidth = T.constant "ZeroExtendToFullWidth" T.int64_t
  let signextendtofullwidth = T.constant "SignExtendToFullWidth" T.int64_t
  let bnimplicitregisterextend = T.enum "BNImplicitRegisterExtend" [ 
      NoExtend, noextend;
      ZeroExtendToFullWidth, zeroextendtofullwidth;
      SignExtendToFullWidth, signextendtofullwidth;
    ]

  let entryvalue = T.constant "EntryValue" T.int64_t
  let offsetfromentryvalue = T.constant "OffsetFromEntryValue" T.int64_t
  let constantvalue = T.constant "ConstantValue" T.int64_t
  let stackframeoffset = T.constant "StackFrameOffset" T.int64_t
  let undeterminedvalue = T.constant "UndeterminedValue" T.int64_t
  let offsetfromundeterminedvalue = T.constant "OffsetFromUndeterminedValue" T.int64_t
  let signedrangevalue = T.constant "SignedRangeValue" T.int64_t
  let unsignedrangevalue = T.constant "UnsignedRangeValue" T.int64_t
  let lookuptablevalue = T.constant "LookupTableValue" T.int64_t
  let comparisonresultvalue = T.constant "ComparisonResultValue" T.int64_t
  let bnregistervaluetype = T.enum "BNRegisterValueType" [ 
      EntryValue, entryvalue;
      OffsetFromEntryValue, offsetfromentryvalue;
      ConstantValue, constantvalue;
      StackFrameOffset, stackframeoffset;
      UndeterminedValue, undeterminedvalue;
      OffsetFromUndeterminedValue, offsetfromundeterminedvalue;
      SignedRangeValue, signedrangevalue;
      UnsignedRangeValue, unsignedrangevalue;
      LookupTableValue, lookuptablevalue;
      ComparisonResultValue, comparisonresultvalue;
    ]

  let updatefailed = T.constant "UpdateFailed" T.int64_t
  let updatesuccess = T.constant "UpdateSuccess" T.int64_t
  let alreadyuptodate = T.constant "AlreadyUpToDate" T.int64_t
  let bnupdateresult = T.enum "BNUpdateResult" [ 
      UpdateFailed, updatefailed;
      UpdateSuccess, updatesuccess;
      AlreadyUpToDate, alreadyuptodate;
    ]

  let idlestate = T.constant "IdleState" T.int64_t
  let disassemblestate = T.constant "DisassembleState" T.int64_t
  let analyzestate = T.constant "AnalyzeState" T.int64_t
  let bnanalysisstate = T.enum "BNAnalysisState" [ 
      IdleState, idlestate;
      DisassembleState, disassemblestate;
      AnalyzeState, analyzestate;
    ]

  let nofindflags = T.constant "NoFindFlags" T.int64_t
  let findcaseinsensitive = T.constant "FindCaseInsensitive" T.int64_t
  let bnfindflag = T.enum "BNFindFlag" [ 
      NoFindFlags, nofindflags;
      FindCaseInsensitive, findcaseinsensitive;
    ]

  let notreadyforinput = T.constant "NotReadyForInput" T.int64_t
  let readyforscriptexecution = T.constant "ReadyForScriptExecution" T.int64_t
  let readyforscriptprograminput = T.constant "ReadyForScriptProgramInput" T.int64_t
  let bnscriptingproviderinputreadystate = T.enum "BNScriptingProviderInputReadyState" [ 
      NotReadyForInput, notreadyforinput;
      ReadyForScriptExecution, readyforscriptexecution;
      ReadyForScriptProgramInput, readyforscriptprograminput;
    ]

  let standardhighlightcolor = T.constant "StandardHighlightColor" T.int64_t
  let mixedhighlightcolor = T.constant "MixedHighlightColor" T.int64_t
  let customhighlightcolor = T.constant "CustomHighlightColor" T.int64_t
  let bnhighlightcolorstyle = T.enum "BNHighlightColorStyle" [ 
      StandardHighlightColor, standardhighlightcolor;
      MixedHighlightColor, mixedhighlightcolor;
      CustomHighlightColor, customhighlightcolor;
    ]

  let nohighlightcolor = T.constant "NoHighlightColor" T.int64_t
  let bluehighlightcolor = T.constant "BlueHighlightColor" T.int64_t
  let greenhighlightcolor = T.constant "GreenHighlightColor" T.int64_t
  let cyanhighlightcolor = T.constant "CyanHighlightColor" T.int64_t
  let redhighlightcolor = T.constant "RedHighlightColor" T.int64_t
  let magentahighlightcolor = T.constant "MagentaHighlightColor" T.int64_t
  let yellowhighlightcolor = T.constant "YellowHighlightColor" T.int64_t
  let orangehighlightcolor = T.constant "OrangeHighlightColor" T.int64_t
  let whitehighlightcolor = T.constant "WhiteHighlightColor" T.int64_t
  let blackhighlightcolor = T.constant "BlackHighlightColor" T.int64_t
  let bnhighlightstandardcolor = T.enum "BNHighlightStandardColor" [ 
      NoHighlightColor, nohighlightcolor;
      BlueHighlightColor, bluehighlightcolor;
      GreenHighlightColor, greenhighlightcolor;
      CyanHighlightColor, cyanhighlightcolor;
      RedHighlightColor, redhighlightcolor;
      MagentaHighlightColor, magentahighlightcolor;
      YellowHighlightColor, yellowhighlightcolor;
      OrangeHighlightColor, orangehighlightcolor;
      WhiteHighlightColor, whitehighlightcolor;
      BlackHighlightColor, blackhighlightcolor;
    ]

  let informationicon = T.constant "InformationIcon" T.int64_t
  let questionicon = T.constant "QuestionIcon" T.int64_t
  let warningicon = T.constant "WarningIcon" T.int64_t
  let erroricon = T.constant "ErrorIcon" T.int64_t
  let bnmessageboxicon = T.enum "BNMessageBoxIcon" [ 
      InformationIcon, informationicon;
      QuestionIcon, questionicon;
      WarningIcon, warningicon;
      ErrorIcon, erroricon;
    ]

  let okbuttonset = T.constant "OKButtonSet" T.int64_t
  let yesnobuttonset = T.constant "YesNoButtonSet" T.int64_t
  let yesnocancelbuttonset = T.constant "YesNoCancelButtonSet" T.int64_t
  let bnmessageboxbuttonset = T.enum "BNMessageBoxButtonSet" [ 
      OKButtonSet, okbuttonset;
      YesNoButtonSet, yesnobuttonset;
      YesNoCancelButtonSet, yesnocancelbuttonset;
    ]

  let nobutton = T.constant "NoButton" T.int64_t
  let yesbutton = T.constant "YesButton" T.int64_t
  let okbutton = T.constant "OKButton" T.int64_t
  let cancelbutton = T.constant "CancelButton" T.int64_t
  let bnmessageboxbuttonresult = T.enum "BNMessageBoxButtonResult" [ 
      NoButton, nobutton;
      YesButton, yesbutton;
      OKButton, okbutton;
      CancelButton, cancelbutton;
    ]

  let labelformfield = T.constant "LabelFormField" T.int64_t
  let separatorformfield = T.constant "SeparatorFormField" T.int64_t
  let textlineformfield = T.constant "TextLineFormField" T.int64_t
  let multilinetextformfield = T.constant "MultilineTextFormField" T.int64_t
  let integerformfield = T.constant "IntegerFormField" T.int64_t
  let addressformfield = T.constant "AddressFormField" T.int64_t
  let choiceformfield = T.constant "ChoiceFormField" T.int64_t
  let openfilenameformfield = T.constant "OpenFileNameFormField" T.int64_t
  let savefilenameformfield = T.constant "SaveFileNameFormField" T.int64_t
  let directorynameformfield = T.constant "DirectoryNameFormField" T.int64_t
  let bnforminputfieldtype = T.enum "BNFormInputFieldType" [ 
      LabelFormField, labelformfield;
      SeparatorFormField, separatorformfield;
      TextLineFormField, textlineformfield;
      MultilineTextFormField, multilinetextformfield;
      IntegerFormField, integerformfield;
      AddressFormField, addressformfield;
      ChoiceFormField, choiceformfield;
      OpenFileNameFormField, openfilenameformfield;
      SaveFileNameFormField, savefilenameformfield;
      DirectoryNameFormField, directorynameformfield;
    ]

  let segmentexecutable = T.constant "SegmentExecutable" T.int64_t
  let segmentwritable = T.constant "SegmentWritable" T.int64_t
  let segmentreadable = T.constant "SegmentReadable" T.int64_t
  let segmentcontainsdata = T.constant "SegmentContainsData" T.int64_t
  let segmentcontainscode = T.constant "SegmentContainsCode" T.int64_t
  let segmentdenywrite = T.constant "SegmentDenyWrite" T.int64_t
  let segmentdenyexecute = T.constant "SegmentDenyExecute" T.int64_t
  let bnsegmentflag = T.enum "BNSegmentFlag" [ 
      SegmentExecutable, segmentexecutable;
      SegmentWritable, segmentwritable;
      SegmentReadable, segmentreadable;
      SegmentContainsData, segmentcontainsdata;
      SegmentContainsCode, segmentcontainscode;
      SegmentDenyWrite, segmentdenywrite;
      SegmentDenyExecute, segmentdenyexecute;
    ]

  let defaultplugincommand = T.constant "DefaultPluginCommand" T.int64_t
  let addressplugincommand = T.constant "AddressPluginCommand" T.int64_t
  let rangeplugincommand = T.constant "RangePluginCommand" T.int64_t
  let functionplugincommand = T.constant "FunctionPluginCommand" T.int64_t
  let bn_plugin_command_type = T.enum "BNPluginCommandType" [ 
      DefaultPluginCommand, defaultplugincommand;
      AddressPluginCommand, addressplugincommand;
      RangePluginCommand, rangeplugincommand;
      FunctionPluginCommand, functionplugincommand;
    ]



  let bn_file_metadata : bn_file_metadata Ctypes.structure T.typ = T.structure "BNFileMetadata"
  let bn_binary_view : bn_binary_view Ctypes.structure T.typ = T.structure "BNBinaryView"
  let bn_function : bn_function Ctypes.structure T.typ = T.structure "BNFunction"
  let bn_binary_viewtype : bn_binary_viewtype Ctypes.structure T.typ = T.structure "BNBinaryViewType"
  let bn_platform : bn_platform Ctypes.structure T.typ = T.structure "BNPlatform"    
  let bn_architecture : bn_architecture Ctypes.structure T.typ = T.structure "BNArchitecture"
  let bn_temporaryfile : bn_temporaryfile Ctypes.structure T.typ = T.structure "BNTemporaryFile"
  let bn_scripting_provider : bn_scripting_provider Ctypes.structure T.typ = T.structure "BNScriptingProvider"
  let bn_basicblock : bn_basicblock Ctypes.structure T.typ = T.structure "BNBasicBlock"
  let bn_functiongraph : bn_functiongraph Ctypes.structure T.typ = T.structure "BNFunctionGraph"
  let bn_functiongraphblock : bn_functiongraphblock Ctypes.structure T.typ = T.structure "BNFunctionGraphBlock"
  let bn_symbol : bn_symbol Ctypes.structure T.typ = T.structure "BNSymbol"
  let bn_transform : bn_transform Ctypes.structure T.typ = T.structure "BNTransform"
  let bn_binary_reader : bn_binary_reader Ctypes.structure T.typ = T.structure "BNBinaryReader"
  let bn_binary_writer : bn_binary_writer Ctypes.structure T.typ = T.structure "BNBinaryWriter"
  let bn_data_buffer : bn_data_buffer Ctypes.structure T.typ = T.structure "BNDataBuffer"
  let bn_temporaryfile : bn_temporaryfile Ctypes.structure T.typ = T.structure "BNTemporaryFile"
let bnbackground_task : bnbackground_task Ctypes.structure T.typ = T.structure "BNBackgroundTask"
  let bn_lowlevelilfunction : bn_lowlevelilfunction Ctypes.structure T.typ = T.structure "BNLowLevelILFunction"
  let bn_type : bn_type Ctypes.structure T.typ = T.structure "BNType"
  let bn_structure : bn_structure Ctypes.structure T.typ = T.structure "BNStructure"
  let bnunknown_type : bnunknown_type Ctypes.structure T.typ = T.structure "BNUnknownType"
  let bn_enumeration : bn_enumeration Ctypes.structure T.typ = T.structure "BNEnumeration"
  let bn_callingconvention : bn_callingconvention Ctypes.structure T.typ = T.structure "BNCallingConvention"
  let bn_analysis_completionevent : bn_analysis_completionevent Ctypes.structure T.typ = T.structure "BNAnalysisCompletionEvent"
  let bndisassembly_settings : bndisassembly_settings Ctypes.structure T.typ = T.structure "BNDisassemblySettings"
  let bnmain_thread_action : bnmain_thread_action Ctypes.structure T.typ = T.structure "BNMainThreadAction"
  let bnscripting_instance : bnscripting_instance Ctypes.structure T.typ = T.structure "BNScriptingInstance"




  type bn_lookup_table_entry
  let bn_lookup_table_entry : bn_lookup_table_entry Ctypes.structure T.typ = T.structure "BNLookupTableEntry"
  let from_values = T.field bn_lookup_table_entry "fromValues" (T.ptr T.int64_t)
  let from_count = T.field bn_lookup_table_entry "fromCount" T.size_t
  let to_value = T.field bn_lookup_table_entry "toValue" T.int64_t
  let () = T.seal bn_lookup_table_entry

  type bn_register_value
  let bn_register_value : bn_register_value Ctypes.structure T.typ = T.structure "BNRegisterValue"
  let state = T.field bn_register_value "state" bn_register_value_type
  let reg = T.field bn_register_value "reg" T.uint32_t
  let value = T.field bn_register_value "value" T.int64_t
  let range_start = T.field bn_register_value "rangeStart" T.uint64_t
  let range_end = T.field bn_register_value "rangeEnd" T.uint64_t
  let range_step = T.field bn_register_value "rangeStep" T.uint64_t
  let table = T.field bn_register_value "table" (T.ptr bn_lookup_table_entry)
  let () = T.seal bn_register_value 

  type bn_register_or_constant
  let bn_register_or_constant : bn_register_or_constant Ctypes.structure T.typ = T.structure "BNRegisterOrConstant"
  let constant = T.field bn_register_or_constant "constant" T.bool
  let reg = T.field bn_register_or_constant "reg" T.uint32_t
  let value = T.field bn_register_or_constant "value" T.uint64_t
  let () = T.seal bn_register_or_constant

  let bn_log_listener : bn_log_listener Ctypes.structure T.typ = T.structure "BNLogListener"
  let context = T.field bn_log_listener "context" (T.ptr T.void)
  let log = T.field bn_log_listener "log" (T.static_funptr T.(T.ptr T.void @-> bn_log_level @-> T.ptr T.char @-> returning T.void))
  let close = T.field bn_log_listener "close" (T.static_funptr T.(T.ptr T.void @-> returning T.void))
  let get_log_level = T.field bn_log_listener "getLogLevel" (T.static_funptr T.(T.ptr T.void @-> returning bn_log_level))
  let () = T.seal bn_log_listener

  let bn_navigation_handler : bn_navigation_handler Ctypes.structure T.typ = T.structure "BNNavigationHandler"
  let context = T.field bn_navigation_handler "context" (T.ptr T.void)
  let get_current_view = T.field bn_navigation_handler "getCurrentView" (T.static_funptr T.(T.ptr T.void @-> returning T.string))
  let get_current_offset = T.field bn_navigation_handler "getCurrentOffset" (T.static_funptr T.(T.ptr T.void @-> returning T.uint64_t))
  let navigate = T.field bn_navigation_handler "navigate" (T.static_funptr T.(T.ptr T.void @-> T.ptr T.char @-> T.uint64_t @-> returning T.bool))
  let () = T.seal bn_navigation_handler

  let bn_binary_data_notification : bn_binary_data_notification Ctypes.structure T.typ = T.structure "BNBinaryDataNotification"
  let context = T.field bn_binary_data_notification "context" (T.ptr T.void)
  let data_written = T.field bn_binary_data_notification "dataWritten" (T.static_funptr T.(T.ptr T.void @-> T.ptr bn_binary_view @-> T.uint64_t @-> T.size_t @-> returning T.void))
  let data_inserted = T.field bn_binary_data_notification "dataInserted" (T.static_funptr T.(T.ptr T.void @-> T.ptr bn_binary_view @-> T.uint64_t @-> T.size_t @-> returning T.void))
  let data_removed = T.field bn_binary_data_notification "dataRemoved" (T.static_funptr T.(T.ptr T.void @-> T.ptr bn_binary_view @-> T.uint64_t @-> T.uint64_t @-> returning T.void))
  let function_added = T.field bn_binary_data_notification "functionAdded" (T.static_funptr T.(T.ptr T.void @-> T.ptr bn_binary_view @-> T.ptr bn_function @-> returning T.void))
  let function_removed = T.field bn_binary_data_notification "functionRemoved" (T.static_funptr T.(T.ptr T.void @-> T.ptr T.void @-> T.ptr T.void @-> returning T.void))
  let function_updated = T.field bn_binary_data_notification "functionUpdated" (T.static_funptr T.(T.ptr T.void @-> T.ptr T.void @-> T.ptr T.void @-> returning T.void))
  let string_found = T.field bn_binary_data_notification "stringFound" (T.static_funptr T.(T.ptr T.void @-> T.ptr T.void @-> bn_string_type @-> T.uint64_t @-> T.size_t @-> returning T.void))
  let string_removed = T.field bn_binary_data_notification "stringRemoved" (T.static_funptr T.(T.ptr void @-> T.ptr T.void @-> bn_string_type @-> T.uint64_t @-> T.size_t @-> returning T.void))
  let () = T.seal bn_binary_data_notification

  let bn_file_accessor : bn_file_accessor Ctypes.structure T.typ = T.structure "BNFileAccessor"
  let context = T.field bn_file_accessor "context" (T.ptr T.void)
  let get_length = T.field bn_file_accessor "getLength" (T.static_funptr T.(T.ptr T.void @-> returning T.uint64_t))
  let read = T.field bn_file_accessor "read" (T.static_funptr T.(T.ptr T.void @-> T.ptr T.void @-> T.uint64_t @-> T.size_t @-> returning T.size_t))
  let write = T.field bn_file_accessor "write" (T.static_funptr T.(T.ptr T.void @-> T.uint64_t @-> T.ptr T.void @-> T.size_t @-> returning T.size_t))
  let () = T.seal bn_file_accessor

  let bn_custom_binary_view : bn_custom_binary_view Ctypes.structure T.typ = T.structure "BNCustomBinaryView"
  let context = T.field bn_custom_binary_view "context" (T.ptr T.void)
  let init = T.field bn_custom_binary_view "init" (T.static_funptr T.(T.ptr T.void @-> returning T.bool))
  let free_object = T.field bn_custom_binary_view "freeObject" (T.static_funptr T.(T.ptr T.void @-> returning T.void))
  let read = T.field bn_custom_binary_view "read" (T.static_funptr (T.(T.ptr T.void @-> T.ptr T.void @-> T.uint64_t @-> T.size_t @-> returning T.size_t)))
  let write = T.field bn_custom_binary_view "write" (T.static_funptr T.(T.ptr T.void @-> T.uint64_t @-> T.ptr T.void @-> T.size_t @-> returning T.size_t))
  let insert = T.field bn_custom_binary_view "insert" (T.static_funptr T.(T.ptr T.void @-> T.uint64_t @-> T.ptr T.void @-> T.size_t @-> returning T.size_t))
  let remove = T.field bn_custom_binary_view "remove" (T.static_funptr T.(T.ptr T.void @-> T.uint64_t @-> T.uint64_t @-> returning T.size_t))
  let get_modification = T.field bn_custom_binary_view "getModification" (T.static_funptr T.(T.ptr T.void @-> T.uint64_t @-> returning bn_modification_status))
  let is_valid_offset = T.field bn_custom_binary_view "isValidOffset" (T.static_funptr T.(T.ptr T.void @-> T.uint64_t @-> returning T.bool))
  let is_offset_readable = T.field bn_custom_binary_view "isOffsetReadable" (T.static_funptr T.(T.ptr T.void @-> T.uint64_t @-> returning T.bool))
  let is_offset_writable = T.field bn_custom_binary_view "isOffsetWritable" (T.static_funptr T.(T.ptr T.void @-> T.uint64_t @-> returning T.bool))
  let is_offset_executable = T.field bn_custom_binary_view "isOffsetExecutable" (T.static_funptr T.(T.ptr T.void @-> T.uint64_t @-> returning T.bool))
  let get_next_valid_offset = T.field bn_custom_binary_view "getNextValidOffset" (T.static_funptr T.(T.ptr T.void @-> T.uint64_t @-> returning T.uint64_t))
  let get_start = T.field bn_custom_binary_view "getStart" (T.static_funptr T.(T.ptr T.void @-> returning T.uint64_t))
  let get_length = T.field bn_custom_binary_view "getLength" (T.static_funptr T.(T.ptr T.void @-> returning T.uint64_t))
  let get_entry_point = T.field bn_custom_binary_view "getEntryPoint" (T.static_funptr T.(T.ptr T.void @-> returning T.uint64_t))
  let is_executable = T.field bn_custom_binary_view "isExecutable" (T.static_funptr T.(T.ptr T.void @-> returning T.bool))
  let get_default_endianness = T.field bn_custom_binary_view "getDefaultEndianness" (T.static_funptr T.(T.ptr T.void @-> returning bn_endianness))
  let get_address_size = T.field bn_custom_binary_view "getAddressSize" (T.static_funptr T.(T.ptr T.void @-> returning T.size_t))
  let save = T.field bn_custom_binary_view "save" (T.static_funptr T.(T.ptr void @-> T.ptr bn_file_accessor @-> returning T.bool))
  let () = T.seal bn_custom_binary_view

  type bn_custom_binary_view_type
  let bn_custom_binary_view_type : bn_custom_binary_view_type Ctypes.structure T.typ = T.structure "BNCustomBinaryViewType"
  let context = T.field bn_custom_binary_view_type "context" (T.ptr T.void)
  let create = T.field bn_custom_binary_view_type "create" (T.static_funptr T.(T.ptr T.void @-> T.ptr bn_binary_view @-> returning (T.ptr bn_binary_view)))
  let is_valid_for_data = T.field bn_custom_binary_view_type "isValidForData" (T.static_funptr T.(T.ptr T.void @-> T.ptr T.void @-> returning T.bool))
  let () = T.seal bn_custom_binary_view_type

  type bn_transform_parameter_info
  let bn_transform_parameter_info : bn_transform_parameter_info Ctypes.structure T.typ = T.structure "BNTransformParameterInfo"
  let name = T.field bn_transform_parameter_info "name" (T.string)
  let long_name = T.field bn_transform_parameter_info "longName" (T.string)
  let fixed_length = T.field bn_transform_parameter_info "fixedLength" (T.size_t)
  let () = T.seal bn_transform_parameter_info

  type bntransform_parameter
  let bntransform_parameter : bntransform_parameter Ctypes.structure T.typ = T.structure "BNTransformParameter"
  let name = T.field bntransform_parameter "name" (T.string)
  let value = T.field bntransform_parameter "value" (T.ptr bn_data_buffer)
  let () = T.seal bntransform_parameter


  let bn_log_listener : bn_log_listener Ctypes.structure T.typ = T.structure "BNLogListener"
  let context = T.field bn_log_listener "context" (T.ptr T.void)
  let log = T.field bn_log_listener "log" (T.static_funptr T.((T.ptr T.void) @-> bn_log_level @-> (T.ptr T.char) @-> returning T.void))
  let close = T.field bn_log_listener "close" (T.static_funptr T.(T.ptr T.void @-> returning T.void))
  let get_log_level = T.field bn_log_listener "getLogLevel" (T.static_funptr T.(T.ptr T.void @-> returning bn_log_level))
  let () = T.seal bn_log_listener

  let bn_navigation_handler : bn_navigation_handler Ctypes.structure T.typ = T.structure "BNNavigationHandler"
  let context = T.field bn_navigation_handler "context" (T.ptr T.void)
  let get_current_view = T.field bn_navigation_handler "getCurrentView" (T.static_funptr T.(T.ptr T.void @-> returning T.string))
  let navigate = T.field bn_navigation_handler "navigate" (T.static_funptr T.(T.ptr T.void @-> T.ptr T.char @-> T.uint @-> returning T.bool))
  let () = T.seal bn_navigation_handler


  let bn_binary_data_notification : bn_binary_data_notification Ctypes.structure T.typ = T.structure "BNBinaryDataNotification"
  let context = T.field bn_binary_data_notification "context" (T.ptr T.void)
  let data_written = T.field bn_binary_data_notification "dataWritten"
      (T.static_funptr T.(T.ptr T.void @-> T.ptr T.void @-> T.uint64_t @-> T.size_t @-> returning T.void))
  let data_inserted = T.field bn_binary_data_notification "dataInserted"
      (T.static_funptr T.(T.ptr T.void @-> T.ptr T.void @-> T.uint64_t @-> T.size_t @-> returning T.void))
  let data_removed = T.field bn_binary_data_notification "dataRemoved"
      (T.static_funptr T.(T.ptr T.void @-> T.ptr T.void @-> T.uint64_t @-> T.uint64_t @-> returning T.void))
  let () = T.seal bn_binary_data_notification



  let bn_file_accessor : bn_file_accessor Ctypes.structure T.typ = T.structure "BNFileAccessor"
  let context = T.field bn_file_accessor "context" (T.ptr T.void)
  let get_length = T.field bn_file_accessor "getLength" (T.static_funptr T.(T.ptr T.void @-> returning T.uint64_t))
  let read = T.field bn_file_accessor "read" (T.static_funptr T.(T.ptr T.void @-> T.ptr T.void @-> T.uint64_t @-> T.size_t @-> returning T.size_t))
  let write = T.field bn_file_accessor "write" (T.static_funptr T.(T.ptr T.void @-> T.uint64_t @-> T.ptr T.void @-> T.size_t @-> returning T.size_t))

  let idlestate = T.constant "IdleState" T.int64_t
  let disassemblestate = T.constant "DisassembleState" T.int64_t
  let analyzestate = T.constant "AnalyzeState" T.int64_t

  let bn_analysis_state =
    T.enum "BNAnalysisState" [
      IdleState, idlestate;
      DisassembleState, disassemblestate;
      AnalyzeState, analyzestate;
    ]

  type bn_analysis_progress
  let bn_analysis_progress : bn_analysis_progress Ctypes.structure T.typ = T.structure "BNAnalysisProgress"
  let state = T.field bn_analysis_progress "state" bn_analysis_state
  let count = T.field bn_analysis_progress "count" T.size_t
  let total = T.field bn_analysis_progress "total" T.size_t
  let () = T.seal bn_analysis_progress

  type bnscripting_instance_callbacks
  let bnscripting_instance_callbacks : bnscripting_instance_callbacks Ctypes.structure T.typ = T.structure "BNScriptingInstanceCallbacks"
  let context = T.field bnscripting_instance_callbacks "context" (T.ptr T.void )
  let destroyinstance = T.field bnscripting_instance_callbacks "destroyInstance" (T.static_funptr T.(T.ptr T.void @-> returning T.void))
  let bnscriptingproviderexecuteresult = T.field bnscripting_instance_callbacks "executeScriptInput"
      T.(T.static_funptr (T.ptr T.void @-> T.string @-> returning bnscriptingproviderexecuteresult))

  let setcurrentbinaryview = T.field bnscripting_instance_callbacks "setCurrentBinaryView"
      (T.static_funptr T.(T.ptr T.void @-> T.ptr T.void @-> returning T.void))
  (* (static_funptr (T.ptr T.void @-> T.ptr bn_binary_view @-> returning T.void)) *)

  let setcurrentfunction = T.field bnscripting_instance_callbacks "setCurrentFunction"
      (T.static_funptr T.(T.ptr T.void @-> T.ptr T.void @-> returning T.void))
  (* (T.static_funptr T.(T.ptr T.void @-> T.ptr T.bn_function @-> returning T.void)) *)

  let setcurrentbasicblock = T.field bnscripting_instance_callbacks "setCurrentBasicBlock"
      (T.static_funptr T.(T.ptr T.void @-> T.ptr T.void @-> returning T.void))
  (* (T.static_funptr T.(T.ptr T.void @-> T.ptr T.bn_basicblock @-> returning T.void)) *)

  let setcurrentaddress = T.field bnscripting_instance_callbacks "setCurrentAddress" 
      (T.static_funptr T.(T.ptr T.void @-> T.uint64_t @-> returning T.void))

  let setcurrentselection = T.field bnscripting_instance_callbacks "setCurrentSelection"
      (T.static_funptr T.(T.ptr T.void @-> T.uint64_t @-> T.uint64_t @-> returning T.void))
  let () = T.seal bnscripting_instance_callbacks

  type bnscripting_provider_callbacks
  let bnscripting_provider_callbacks : bnscripting_provider_callbacks Ctypes.structure T.typ = T.structure "BNScriptingProviderCallbacks"
  let context = T.field bnscripting_provider_callbacks "context" (T.ptr T.void)
  let createinstance = T.field bnscripting_provider_callbacks "createInstance" (T.static_funptr T.(T.ptr T.void @-> T.ptr T.void @-> returning T.void))
  let () = T.seal bnscripting_provider_callbacks

  type bnscripting_output_listener
  let bnscripting_output_listener : bnscripting_output_listener Ctypes.structure T.typ = T.structure "BNScriptingOutputListener"
  let context = T.field bnscripting_output_listener "context" (T.ptr T.void)
  let output = T.field bnscripting_output_listener "output" (T.static_funptr T.(T.ptr T.void @-> T.string @-> returning T.void))
  let error = T.field bnscripting_output_listener "error" (T.static_funptr T.(T.ptr T.void @-> T.string @-> returning T.void))
  let inputreadystatechanged = T.field bnscripting_output_listener "inputReadyStateChanged"
      (T.static_funptr T.(T.ptr T.void @-> bnscriptingproviderinputreadystate @-> returning T.void))
  let () = T.seal bnscripting_output_listener

  type bnmain_thread_callbacks 
  let bnmain_thread_callbacks : bnmain_thread_callbacks Ctypes.structure T.typ = T.structure "BNMainThreadCallbacks"
  let context = T.field bnmain_thread_callbacks "context" (T.ptr T.void)
  let addaction = T.field bnmain_thread_callbacks "addAction"
      (T.static_funptr T.(T.ptr T.void @-> T.ptr T.void @-> returning T.void))
  let () = T.seal bnmain_thread_callbacks

  type bnconstant_reference
  let bnconstant_reference : bnconstant_reference Ctypes.structure T.typ = T.structure "BNConstantReference"
  let value = T.field bnconstant_reference "value" (T.int64_t)
  let size = T.field bnconstant_reference "size" (T.size_t)
  let () = T.seal bnconstant_reference

  type bnhighlight_color
  let bnhighlight_color : bnhighlight_color Ctypes.structure T.typ = T.structure "BNHighlightColor"
  let style = T.field bnhighlight_color "style" (bnhighlightcolorstyle)
  let color = T.field bnhighlight_color "color" (bnhighlightstandardcolor)
  let mixcolor = T.field bnhighlight_color "mixColor" (bnhighlightstandardcolor)
  let mix = T.field bnhighlight_color "mix" (T.uint8_t)
  let r = T.field bnhighlight_color "r" (T.uint8_t)
  let g = T.field bnhighlight_color "g" (T.uint8_t)
  let b = T.field bnhighlight_color "b" (T.uint8_t)
  let alpha = T.field bnhighlight_color "alpha" (T.uint8_t)
  let () = T.seal bnhighlight_color

  type bnform_input_field
  let bnform_input_field : bnform_input_field Ctypes.structure T.typ = T.structure "BNFormInputField"
  let type_ = T.field bnform_input_field "type" (bnforminputfieldtype)
  let prompt = T.field bnform_input_field "prompt" (T.string)
  let view = T.field bnform_input_field "view" (T.ptr T.void)
  let currentaddress = T.field bnform_input_field "currentAddress" (T.uint64_t)
  let choices = T.field bnform_input_field "choices" (T.ptr T.string)
  let count = T.field bnform_input_field "count" (T.size_t)
  let ext = T.field bnform_input_field "ext" (T.string)
  let defaultname = T.field bnform_input_field "defaultName" (T.string)
  let intresult = T.field bnform_input_field "intResult" (T.int64_t)
  let addressresult = T.field bnform_input_field "addressResult" (T.uint64_t)
  let stringresult = T.field bnform_input_field "stringResult" (T.string)
  let indexresult = T.field bnform_input_field "indexResult" (T.int)
  let () = T.seal bnform_input_field

  (* type bninteraction_handler_callbacks *)
  (* let bninteraction_handler_callbacks : bninteraction_handler_callbacks Ctypes.structure T.typ = T.structure "BNInteractionHandlerCallbacks" *)
  (* let context = T.field bninteraction_handler_callbacks "context" (void *\) *)
  (* let showplaintextreport = T.field bninteraction_handler_callbacks "showPlainTextReport" (void (\*\)(void *, struct BNBinaryView *, const char *, const char *\)) *)
  (* let showmarkdownreport = T.field bninteraction_handler_callbacks "showMarkdownReport" (void (\*\)(void *, struct BNBinaryView *, const char *, const char *, const char *\)) *)
  (* let showhtmlreport = T.field bninteraction_handler_callbacks "showHTMLReport" (void (\*\)(void *, struct BNBinaryView *, const char *, const char *, const char *\)) *)
  (* let gettextlineinput = T.field bninteraction_handler_callbacks "getTextLineInput" (int (\*\)(void *, char **, const char *, const char *\)) *)
  (* let getintegerinput = T.field bninteraction_handler_callbacks "getIntegerInput" (int (\*\)(void *, int64_t *, const char *, const char *\)) *)
  (* let getaddressinput = T.field bninteraction_handler_callbacks "getAddressInput" (int (\*\)(void *,T.uint64_t *, const char *, const char *, struct BNBinaryView *,T.uint64_t)) *)
  (* let getchoiceinput = T.field bninteraction_handler_callbacks "getChoiceInput" (int (\*\)(void *, int *, const char *, const char *, const char **, int)) *)
  (* let getopenfilenameinput = T.field bninteraction_handler_callbacks "getOpenFileNameInput" (int (\*\)(void *, char **, const char *, const char *\)) *)
  (* let getsavefilenameinput = T.field bninteraction_handler_callbacks "getSaveFileNameInput" (int (\*\)(void *, char **, const char *, const char *, const char *\)) *)
  (* let getdirectorynameinput = T.field bninteraction_handler_callbacks "getDirectoryNameInput" (int (\*\)(void *, char **, const char *, const char *\)) *)
  (* let getforminput = T.field bninteraction_handler_callbacks "getFormInput" (int (\*\)(void *, struct BNFormInputField *, int, const char *\)) *)
  (* let bnmessageboxbuttonresult = T.field bninteraction_handler_callbacks "BNMessageBoxButtonResult" (int (int *\)) *)
  type bnobject_destruction_callbacks
  let bnobject_destruction_callbacks : bnobject_destruction_callbacks Ctypes.structure T.typ = T.structure "BNObjectDestructionCallbacks"
  let context = T.field bnobject_destruction_callbacks "context" (T.ptr T.void)
  let destructbinaryview = T.field bnobject_destruction_callbacks "destructBinaryView"
      (T.static_funptr T.(T.ptr T.void @-> T.ptr bn_binary_view @-> returning (T.ptr T.void)))

  let destructfilemetadata = T.field bnobject_destruction_callbacks "destructFileMetadata" 
      (T.static_funptr T.(T.ptr T.void @-> T.ptr bn_file_metadata @-> returning (T.ptr T.void)))

  let destructfunction = T.field bnobject_destruction_callbacks "destructFunction" 
      (T.static_funptr T.(T.ptr T.void @-> T.ptr bn_binary_view @-> returning (T.ptr T.void)))
  let () = T.seal bnobject_destruction_callbacks 

  type bnsegment
  let bnsegment : bnsegment Ctypes.structure T.typ = T.structure "BNSegment"
  let start = T.field bnsegment "start" (T.uint64_t)
  let length = T.field bnsegment "length" (T.uint64_t)
  let dataoffset = T.field bnsegment "dataOffset" (T.uint64_t)
  let datalength = T.field bnsegment "dataLength" (T.uint64_t)
  let flags = T.field bnsegment "flags" (T.uint32_t)
  let () = T.seal bnsegment

  type bnsection
  let bnsection : bnsection Ctypes.structure T.typ = T.structure "BNSection"
  let name = T.field bnsection "name" (T.string)
  let type_ = T.field bnsection "type" (T.string)
  let start = T.field bnsection "start" (T.uint64_t)
  let length = T.field bnsection "length" (T.uint64_t)
  let linkedsection = T.field bnsection "linkedSection" (T.string)
  let infosection = T.field bnsection "infoSection" (T.string)
  let infodata = T.field bnsection "infoData" (T.uint64_t)
  let align = T.field bnsection "align" (T.uint64_t)
  let entrysize = T.field bnsection "entrySize" (T.uint64_t)
  let () = T.seal bnsection

  type bnaddress_range
  let bnaddress_range : bnaddress_range Ctypes.structure T.typ = T.structure "BNAddressRange"
  let start = T.field bnaddress_range "start" (T.uint64_t)
  let end_ = T.field bnaddress_range "end" (T.uint64_t)
  let () = T.seal bnaddress_range

  type bncustom_transform
  let bncustom_transform : bncustom_transform Ctypes.structure T.typ = T.structure "BNCustomTransform"
  let context = T.field bncustom_transform "context" (T.ptr T.void)
  let getparameters = T.field bncustom_transform "getParameters"
      (T.static_funptr T.(T.ptr T.void @-> T.ptr T.size_t @-> returning ( T.ptr bn_transform_parameter_info)))
  let freeparameters = T.field bncustom_transform "freeParameters"
      (T.static_funptr T.(T.ptr bn_transform_parameter_info @-> T.size_t @-> returning T.void))
  let decode = T.field bncustom_transform "decode"
      (T.static_funptr T.(T.ptr T.void @-> T.ptr bn_data_buffer @-> T.ptr bn_data_buffer @-> T.ptr bn_transform_parameter_info @-> T.size_t @-> returning T.bool))
  let encode = T.field bncustom_transform "encode" 
      (T.static_funptr T.(T.ptr T.void @-> T.ptr bn_data_buffer @-> T.ptr bn_data_buffer @-> T.ptr bn_transform_parameter_info @-> T.size_t @-> returning T.bool))
  let () = T.seal bncustom_transform

  type bninstruction_text_token
  let bninstruction_text_token : bninstruction_text_token Ctypes.structure T.typ = T.structure "BNInstructionTextToken"
  let type_ = T.field bninstruction_text_token "type" (bn_instruction_text_token_type)
  let text = T.field bninstruction_text_token "text" (T.string)
  let value = T.field bninstruction_text_token "value" (T.uint64_t)
  let size = T.field bninstruction_text_token "size" (T.size_t)
  let operand = T.field bninstruction_text_token "operand" (T.size_t)
  let () = T.seal bninstruction_text_token

  type bnfunction_recognizer
  let bnfunction_recognizer : bnfunction_recognizer Ctypes.structure T.typ = T.structure "BNFunctionRecognizer"
  let context = T.field bnfunction_recognizer "context" (T.ptr T.void)
  let recognizelowlevelil = T.field bnfunction_recognizer "recognizeLowLevelIL"
      (T.static_funptr T.(T.ptr T.void @-> T.ptr bn_binary_view @-> T.ptr bn_function @-> T.ptr bn_lowlevelilfunction @-> returning T.bool))
  let () = T.seal bnfunction_recognizer

  type bnstack_variable
  let bnstack_variable : bnstack_variable Ctypes.structure T.typ = T.structure "BNStackVariable"
  let type_ = T.field bnstack_variable "type" (T.ptr T.void)
  let name = T.field bnstack_variable "name" (T.string)
  let offset = T.field bnstack_variable "offset" (T.int64_t)
  let autodefined = T.field bnstack_variable "autoDefined" (T.bool)
  let () = T.seal bnstack_variable

  type bnstack_variable_reference
  let bnstack_variable_reference : bnstack_variable_reference Ctypes.structure T.typ = T.structure "BNStackVariableReference"
  let sourceoperand = T.field bnstack_variable_reference "sourceOperand" (T.uint32_t)
  let type_ = T.field bnstack_variable_reference "type" (T.ptr T.void)
  let name = T.field bnstack_variable_reference "name" (T.string)
  let startingoffset = T.field bnstack_variable_reference "startingOffset" (T.int64_t)
  let referencedoffset = T.field bnstack_variable_reference "referencedOffset" (T.int64_t)
  let () = T.seal bnstack_variable_reference

  type bnindirect_branch_info
  let bnindirect_branch_info : bnindirect_branch_info Ctypes.structure T.typ = T.structure "BNIndirectBranchInfo"
  let sourcearch = T.field bnindirect_branch_info "sourceArch" (T.ptr T.void)
  let sourceaddr = T.field bnindirect_branch_info "sourceAddr" (T.uint64_t)
  let destarch = T.field bnindirect_branch_info "destArch" (T.ptr T.void)
  let destaddr = T.field bnindirect_branch_info "destAddr" (T.uint64_t)
  let autodefined = T.field bnindirect_branch_info "autoDefined" (T.bool)
  let () = T.seal bnindirect_branch_info

  type bnarchitecture_and_address
  let bnarchitecture_and_address : bnarchitecture_and_address Ctypes.structure T.typ = T.structure "BNArchitectureAndAddress"
  let arch = T.field bnarchitecture_and_address "arch" (T.ptr T.void)
  let address = T.field bnarchitecture_and_address "address" (T.uint64_t)
  let () = T.seal bnarchitecture_and_address

  type bninstruction_text_line
  let bninstruction_text_line : bninstruction_text_line Ctypes.structure T.typ = T.structure "BNInstructionTextLine"
  let tokens = T.field bninstruction_text_line "tokens" (T.ptr bn_instruction_text_token_type)
  let count = T.field bninstruction_text_line "count" (T.size_t)
  let () = T.seal bninstruction_text_line

  type bndisassembly_text_line
  let bndisassembly_text_line : bndisassembly_text_line Ctypes.structure T.typ = T.structure "BNDisassemblyTextLine"
  let addr = T.field bndisassembly_text_line "addr" (T.uint64_t)
  let tokens = T.field bndisassembly_text_line "tokens" (T.ptr bninstruction_text_token )
  let count = T.field bndisassembly_text_line "count" (T.size_t)
  let () = T.seal bndisassembly_text_line

  type bnlinear_disassembly_line
  let bnlinear_disassembly_line : bnlinear_disassembly_line Ctypes.structure T.typ = T.structure "BNLinearDisassemblyLine"
  let type_ = T.field bnlinear_disassembly_line "type" (bnlineardisassemblylinetype)
  let function_ = T.field bnlinear_disassembly_line "function" (T.ptr T.void)
  let block = T.field bnlinear_disassembly_line "block" (T.ptr T.void)
  let lineoffset = T.field bnlinear_disassembly_line "lineOffset" (T.size_t)
  let contents = T.field bnlinear_disassembly_line "contents" (bndisassembly_text_line)
  let () = T.seal bnlinear_disassembly_line

  type bnlinear_disassembly_position
  let bnlinear_disassembly_position : bnlinear_disassembly_position Ctypes.structure T.typ = T.structure "BNLinearDisassemblyPosition"
  let function_ = T.field bnlinear_disassembly_position "function" (T.ptr T.void)
  let block = T.field bnlinear_disassembly_position "block" (T.ptr T.void)
  let address = T.field bnlinear_disassembly_position "address" (T.uint64_t)
  let () = T.seal bnlinear_disassembly_position

  type bn_data_variable
  let bn_data_variable : bn_data_variable Ctypes.structure T.typ = T.structure "BNDataVariable"
  let address = T.field bn_data_variable "address" (T.uint64_t)
  let type_ = T.field bn_data_variable "type" (T.ptr bn_type)
  let autodiscovered = T.field bn_data_variable "autoDiscovered" (T.bool)
  let () = T.seal bn_data_variable


  type bn_basic_block_edge
  let bn_basic_block_edge : bn_basic_block_edge Ctypes.structure T.typ = T.structure "BNBasicBlockEdge"
  let type_ = T.field bn_basic_block_edge "type" (bn_branch_type)
  let target = T.field bn_basic_block_edge "target" (T.uint64_t)
  let arch = T.field bn_basic_block_edge "arch" (T.ptr bn_architecture)
  let () = T.seal bn_basic_block_edge 

  type bn_point
  let bn_point : bn_point Ctypes.structure T.typ = T.structure "BNPoint"
  let x = T.field bn_point "x" (T.float)
  let y = T.field bn_point "y" (T.float)
  let () = T.seal bn_point

  type bn_function_graph_edge
  let bn_function_graph_edge : bn_function_graph_edge Ctypes.structure T.typ = T.structure "BNFunctionGraphEdge"
  let type_ = T.field bn_function_graph_edge "type" (bn_branch_type)
  let target = T.field bn_function_graph_edge "target" (T.uint64_t)
  let arch = T.field bn_function_graph_edge "arch" (T.ptr bn_architecture)
  let points = T.field bn_function_graph_edge "points" (T.ptr bn_point)
  let pointcount = T.field bn_function_graph_edge "pointCount" (T.size_t)
  let () = T.seal bn_function_graph_edge 

  (*   type bn_custom_architecture *)
  (*   let bn_custom_architecture : bn_custom_architecture Ctypes.structure T.typ = T.structure "BNCustomArchitecture" *)
  (*   let context = T.field bn_custom_architecture "context" (T.ptr T.void) *)
  (*   let init = T.field bn_custom_architecture "init" *)
  (*       (T.static_funptr T.(T.ptr T.void @-> T.ptr bn_architecture @-> returning T.void)) *)
  (*   let get_endianness = T.field bn_custom_architecture "getEndianness" *)
  (*       (T.static_funptr T.(T.ptr T.void @-> returning bn_endianness)) *)
  (*   let size_t_ = T.field bn_custom_architecture "size_t" *)
  (*       (T.static_funptr T.()) *)
  (* let getassociatedarchitecturebyaddress = T.field bncustom_architecture "getAssociatedArchitectureByAddress" (struct BNArchitecture *(\*\)(void *, uint64_t *\)) *)
  (* let getinstructioninfo = T.field bncustom_architecture "getInstructionInfo" (int (\*\)(void *, const uint8_t *, uint64_t, int, struct BNInstructionInfo *\)) *)
  (* let getinstructiontext = T.field bncustom_architecture "getInstructionText" (int (\*\)(void *, const uint8_t *, uint64_t, int *, struct BNInstructionTextToken **, int *\)) *)
  (* let freeinstructiontext = T.field bncustom_architecture "freeInstructionText" (void (\*\)(struct BNInstructionTextToken *, int)) *)
  (* let getinstructionlowlevelil = T.field bncustom_architecture "getInstructionLowLevelIL" (int (\*\)(void *, const uint8_t *, uint64_t, int *, struct BNLowLevelILFunction *\)) *)
  (* let getregistername = T.field bncustom_architecture "getRegisterName" (char *(\*\)(void *, uint32_t)) *)
  (* let getflagname = T.field bncustom_architecture "getFlagName" (char *(\*\)(void *, uint32_t)) *)
  (* let getflagwritetypename = T.field bncustom_architecture "getFlagWriteTypeName" (char *(\*\)(void *, uint32_t)) *)
  (* let getfullwidthregisters = T.field bncustom_architecture "getFullWidthRegisters" (uint32_t *(\*\)(void *, int *\)) *)
  (* let getallregisters = T.field bncustom_architecture "getAllRegisters" (uint32_t *(\*\)(void *, int *\)) *)
  (* let getallflags = T.field bncustom_architecture "getAllFlags" (uint32_t *(\*\)(void *, int *\)) *)
  (* let getallflagwritetypes = T.field bncustom_architecture "getAllFlagWriteTypes" (uint32_t *(\*\)(void *, int *\)) *)
  (* let bnflagrole = T.field bncustom_architecture "BNFlagRole" (int (int *\)) *)
  (* let getflagsrequiredforflagcondition = T.field bncustom_architecture "getFlagsRequiredForFlagCondition" (uint32_t *(\*\)(void *, enum BNLowLevelILFlagCondition, int *\)) *)
  (* let getflagswrittenbyflagwritetype = T.field bncustom_architecture "getFlagsWrittenByFlagWriteType" (uint32_t *(\*\)(void *, uint32_t, int *\)) *)
  (* let freeregisterlist = T.field bncustom_architecture "freeRegisterList" (void (\*\)(void *, uint32_t *\)) *)
  (* let getregisterinfo = T.field bncustom_architecture "getRegisterInfo" (void (\*\)(void *, uint32_t, struct BNRegisterInfo *\)) *)
  (* let getstackpointerregister = T.field bncustom_architecture "getStackPointerRegister" (uint32_t (\*\)(void *\)) *)
  (* let getlinkregister = T.field bncustom_architecture "getLinkRegister" (uint32_t (\*\)(void *\)) *)
  (* let assemble = T.field bncustom_architecture "assemble" (int (\*\)(void *, const char *, uint64_t, struct BNDataBuffer *, char **\)) *)
  (* let isneverbranchpatchavailable = T.field bncustom_architecture "isNeverBranchPatchAvailable" (int (\*\)(void *, const uint8_t *, uint64_t, int)) *)
  (* let isalwaysbranchpatchavailable = T.field bncustom_architecture "isAlwaysBranchPatchAvailable" (int (\*\)(void *, const uint8_t *, uint64_t, int)) *)
  (* let isinvertbranchpatchavailable = T.field bncustom_architecture "isInvertBranchPatchAvailable" (int (\*\)(void *, const uint8_t *, uint64_t, int)) *)
  (* let isskipandreturnzeropatchavailable = T.field bncustom_architecture "isSkipAndReturnZeroPatchAvailable" (int (\*\)(void *, const uint8_t *, uint64_t, int)) *)
  (* let isskipandreturnvaluepatchavailable = T.field bncustom_architecture "isSkipAndReturnValuePatchAvailable" (int (\*\)(void *, const uint8_t *, uint64_t, int)) *)
  (* let converttonop = T.field bncustom_architecture "convertToNop" (int (\*\)(void *, uint8_t *, uint64_t, int)) *)
  (* let alwaysbranch = T.field bncustom_architecture "alwaysBranch" (int (\*\)(void *, uint8_t *, uint64_t, int)) *)
  (* let invertbranch = T.field bncustom_architecture "invertBranch" (int (\*\)(void *, uint8_t *, uint64_t, int)) *)
  (* let skipandreturnvalue = T.field bncustom_architecture "skipAndReturnValue" (int (\*\)(void *, uint8_t *, uint64_t, int, uint64_t)) *)

  type bnplugin_command
  let bnplugin_command : bnplugin_command Ctypes.structure T.typ = T.structure "BNPluginCommand"
  let name = T.field bnplugin_command "name" (T.string)
  let description = T.field bnplugin_command "description" (T.string)
  let type_ = T.field bnplugin_command "type" (bn_plugin_command_type)
  let context = T.field bnplugin_command "context" (T.ptr T.void)
  let defaultcommand = T.field bnplugin_command "defaultCommand"
      (T.static_funptr T.(T.ptr T.void @-> T.ptr bn_binary_view @-> returning T.void))
  let addresscommand = T.field bnplugin_command "addressCommand"
      (T.static_funptr T.(T.ptr T.void @-> T.ptr bn_binary_view @-> T.uint64_t @-> returning T.void))
  let rangecommand = T.field bnplugin_command "rangeCommand"
      (T.static_funptr T.(T.ptr T.void @-> T.ptr bn_binary_view @-> T.uint64_t @-> T.uint64_t @-> returning T.void))
  let functioncommand = T.field bnplugin_command "functionCommand"
      (T.static_funptr T.(T.ptr T.void @-> T.ptr bn_binary_view @-> T.ptr bn_function @-> returning T.void))
  let defaultisvalid = T.field bnplugin_command "defaultIsValid" 
      (T.static_funptr T.(T.ptr T.void @-> T.ptr bn_binary_view @-> returning T.bool))
  let addressisvalid = T.field bnplugin_command "addressIsValid"
      (T.static_funptr T.(T.ptr T.void @-> T.ptr bn_binary_view @-> T.uint64_t @-> returning T.bool))
  let rangeisvalid = T.field bnplugin_command "rangeIsValid" 
      (T.static_funptr T.(T.ptr T.void @-> T.ptr bn_binary_view @-> T.uint64_t @-> T.uint64_t @-> returning T.bool))
  let functionisvalid = T.field bnplugin_command "functionIsValid"
      (T.static_funptr T.(T.ptr T.void @-> T.ptr bn_binary_view @-> T.ptr bn_function @-> returning T.bool))
  let () = T.seal bnplugin_command

  type bncustom_calling_convention
  let bncustom_calling_convention : bncustom_calling_convention Ctypes.structure T.typ = T.structure "BNCustomCallingConvention"
  let context = T.field bncustom_calling_convention "context" (T.ptr T.void)
  let freeobject = T.field bncustom_calling_convention "freeObject"
      (T.static_funptr T.(T.ptr T.void @-> returning T.void))
  let getcallersavedregisters = T.field bncustom_calling_convention "getCallerSavedRegisters"
      (T.static_funptr T.(T.ptr T.void @-> T.ptr T.size_t @-> returning (T.ptr T.uint32_t)))
  let getintegerargumentregisters = T.field bncustom_calling_convention "getIntegerArgumentRegisters"
      (T.static_funptr T.(T.ptr T.void @-> T.ptr T.size_t @-> returning (T.ptr T.uint32_t)))
  let getfloatargumentregisters = T.field bncustom_calling_convention "getFloatArgumentRegisters" 
      (T.static_funptr T.(T.ptr T.void @-> T.ptr T.size_t @-> returning (T.ptr T.uint32_t)))
  let freeregisterlist = T.field bncustom_calling_convention "freeRegisterList"
      (T.static_funptr T.(T.ptr T.void @-> T.ptr T.uint32_t @-> returning T.void))

  let areargumentregisterssharedindex = T.field bncustom_calling_convention "areArgumentRegistersSharedIndex"
      (T.static_funptr T.(T.ptr T.void @-> returning T.bool))
  let isstackreservedforargumentregisters = T.field bncustom_calling_convention "isStackReservedForArgumentRegisters" 
      (T.static_funptr T.(T.ptr T.void @-> returning T.bool))
  let getintegerreturnvalueregister = T.field bncustom_calling_convention "getIntegerReturnValueRegister" 
      (T.static_funptr T.(T.ptr T.void @-> returning T.uint32_t))
  let gethighintegerreturnvalueregister = T.field bncustom_calling_convention "getHighIntegerReturnValueRegister" 
      (T.static_funptr T.(T.ptr T.void @-> returning T.uint32_t))
  let getfloatreturnvalueregister = T.field bncustom_calling_convention "getFloatReturnValueRegister" 
      (T.static_funptr T.(T.ptr T.void @-> returning T.uint32_t))
  let () = T.seal bncustom_calling_convention


  type bnundo_action
  let bnundo_action : bnundo_action Ctypes.structure T.typ = T.structure "BNUndoAction"
  let type_ = T.field bnundo_action "type" (bn_action_type)
  let context = T.field bnundo_action "context" (T.ptr T.void)
  let freeobject = T.field bnundo_action "freeObject"
      (T.static_funptr T.(T.ptr T.void @-> returning T.void))
  let undo = T.field bnundo_action "undo" 
      (T.static_funptr T.(T.ptr T.void @-> T.ptr bn_binary_view @-> returning T.void))
  let redo = T.field bnundo_action "redo" 
      (T.static_funptr T.(T.ptr T.void @-> T.ptr bn_binary_view @-> returning T.void))
  let serialize = T.field bnundo_action "serialize" 
      (T.static_funptr T.(T.ptr T.void @-> returning T.string))
  let () = T.seal bnundo_action

  type bninstruction_info
  let bninstruction_info : bninstruction_info Ctypes.structure T.typ = T.structure "BNInstructionInfo"
  let length = T.field bninstruction_info "length" (T.size_t)
  let branchcount = T.field bninstruction_info "branchCount" (T.size_t)
  let branchdelay = T.field bninstruction_info "branchDelay" (T.bool)
  let branchtype = Array.init 3 (fun i -> T.field bninstruction_info "branchType" bn_branch_type)
  let branchtarget = Array.init 3 (fun i -> T.field bninstruction_info "branchTarget" T.uint64_t )
  let brancharch = Array.init 3 (fun i -> T.field bninstruction_info "branchArch" (T.ptr bn_architecture))
  let () = T.seal bninstruction_info

  type bnreference_source
  let bnreference_source : bnreference_source Ctypes.structure T.typ = T.structure "BNReferenceSource"
  let func = T.field bnreference_source "func" (T.ptr bn_function)
  let arch = T.field bnreference_source "arch" (T.ptr bn_architecture)
  let addr = T.field bnreference_source "addr" (T.uint64_t)
  let () = T.seal bnreference_source

  type bnstring_reference
  let bnstring_reference : bnstring_reference Ctypes.structure T.typ = T.structure "BNStringReference"
  let type_ = T.field bnstring_reference "type" (bn_string_type)
  let start = T.field bnstring_reference "start" (T.uint64_t)
  let length = T.field bnstring_reference "length" (T.size_t)
  let () = T.seal bnstring_reference

  type bnname_and_type
  let bnname_and_type : bnname_and_type Ctypes.structure T.typ = T.structure "BNNameAndType"
  let name = T.field bnname_and_type "name" (T.string)
  let type_ = T.field bnname_and_type "type" (T.ptr bn_type)
  let () = T.seal bnname_and_type

  type bnstructure_member
  let bnstructure_member : bnstructure_member Ctypes.structure T.typ = T.structure "BNStructureMember"
  let type_ = T.field bnstructure_member "type" (T.ptr bn_type)
  let name = T.field bnstructure_member "name" (T.string)
  let offset = T.field bnstructure_member "offset" (T.uint64_t)
  let () = T.seal bnstructure_member

  type bnenumeration_member
  let bnenumeration_member : bnenumeration_member Ctypes.structure T.typ = T.structure "BNEnumerationMember"
  let name = T.field bnenumeration_member "name" (T.string)
  let value = T.field bnenumeration_member "value" (T.uint64_t)
  let isdefault = T.field bnenumeration_member "isDefault" (T.bool)
  let () = T.seal bnenumeration_member

  type bntype_parser_result
  let bntype_parser_result : bntype_parser_result Ctypes.structure T.typ = T.structure "BNTypeParserResult"
  let types = T.field bntype_parser_result "types" (T.ptr bnname_and_type )
  let variables = T.field bntype_parser_result "variables" (T.ptr bnname_and_type )
  let functions = T.field bntype_parser_result "functions" (T.ptr bnname_and_type )
  let typecount = T.field bntype_parser_result "typeCount" (T.size_t)
  let variablecount = T.field bntype_parser_result "variableCount" (T.size_t)
  let functioncount = T.field bntype_parser_result "functionCount" (T.size_t)
  let () = T.seal bntype_parser_result

  type bnupdate_channel
  let bnupdate_channel : bnupdate_channel Ctypes.structure T.typ = T.structure "BNUpdateChannel"
  let name = T.field bnupdate_channel "name" (T.string)
  let description = T.field bnupdate_channel "description" T.string
  let latestversion = T.field bnupdate_channel "latestVersion" T.string
  let () = T.seal bnupdate_channel
  type bnupdate_version
  let bnupdate_version : bnupdate_version Ctypes.structure T.typ = T.structure "BNUpdateVersion"
  let version = T.field bnupdate_version "version" (T.string)
  let notes = T.field bnupdate_version "notes" (T.string)
  let time = T.field bnupdate_version "time" (T.uint64_t)
  let () = T.seal bnupdate_version
end

