open Ctypes

type bn_log_listener
type bn_navigation_handler
type bn_binary_data_notification 
type bn_file_accessor
type bn_custom_binary_view
type bn_scripting_provider

type bn_low_level_il_instruction
type bn_low_level_il_label

type bn_data_buffer
type bn_binary_view
type bn_binary_viewtype
type bn_binary_reader
type bn_binary_writer
type bn_file_metadata
type bn_transform
type bn_architecture
type bn_function
type bn_basicblock
type bn_functiongraph
type bn_functiongraphblock
type bn_symbol
type bn_temporaryfile
type bn_lowlevelilfunction
type bn_type
type bn_structure
type bn_enumeration
type bn_callingconvention
type bn_platform
type bn_analysis_completionevent

type bn_plugin_load_order =
  | BN_EarlyPluginLoadOrder
  | BN_NormalPluginLoadOrder
  | BN_LatePluginLoadOrder

type bn_log_level =
  | BN_DebugLog
  | BN_InfoLog
  | BN_WarningLog
  | BN_ErrorLog
  | BN_AlertLog

type bn_endianness =
  | BN_LittleEndian
  | BN_BigEndian

type bn_modification_status =
  | BN_Original
  | BN_Changed
  | BN_Inserted

type bn_transform_type = 
  | BN_BinaryCodecTransform 
  | BN_TextCodecTransform 
  | BN_UnicodeCodecTransform 
  | BN_DecodeTransform 
  | BN_BinaryEncodeTransform 
  | BN_TextEncodeTransform 
  | BN_EncryptTransform 
  | BN_InvertingTransform 
  | BN_HashTransform

type bn_branch_type = 
  | BN_UnconditionalBranch 
  | BN_FalseBranch 
  | BN_TrueBranch 
  | BN_CallDestination 
  | BN_FunctionReturn 
  | BN_SystemCall 
  | BN_IndirectBranch 
  | BN_UnresolvedBranch

type bn_instruction_text_token_type = 
  | BN_TextToken 
  | BN_InstructionToken 
  | BN_OperandSeparatorToken 
  | BN_RegisterToken 
  | BN_IntegerToken 
  | BN_PossibleAddressToken 
  | BN_BeginMemoryOperandToken 
  | BN_EndMemoryOperandToken 
  | BN_FloatingPointToken 
  | BN_AnnotationToken 
  | BN_CodeRelativeAddressToken 
  | BN_CodeSymbolToken 
  | BN_DataSymbolToken 
  | BN_StackVariableToken 
  | BN_ImportToken 
  | BN_AddressDisplayToken

type bn_symbol_type =
  | BN_FunctionSymbol 
  | BN_ImportAddressSymbol 
  | BN_ImportedFunctionSymbol 
  | BN_DataSymbol 
  | BN_ImportedDataSymbol


type bn_action_type = 
  | BN_TemporaryAction 
  | BN_DataModificationAction 
  | BN_AnalysisAction 
  | BN_DataModificationAndAnalysisAction

type bn_low_level_il_operation = 
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

type bn_lowlevel_il_flag_condition =
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

type bn_flag_role = 
  | BN_SpecialFlagRole 
  | BN_ZeroFlagRole 
  | BN_PositiveSignFlagRole 
  | BN_NegativeSignFlagRole 
  | BN_CarryFlagRole 
  | BN_OverflowFlagRole 
  | BN_HalfCarryFlagRole 
  | BN_EvenParityFlagRole 
  | BN_OddParityFlagRole 

type bn_function_graph_type = 
  | BN_NormalFunctionGraph 
  | BN_LowLevelILFunctionGraph 
  | BN_LiftedILFunctionGraph

type bn_function_graph_option = 
  | BN_ShowAddress 
  | BN_ShowBasicBlockRegisterState 
  | BN_ShowFlagUsage

type bn_type_class = 
  | BN_VoidTypeClass 
  | BN_BoolTypeClass 
  | BN_IntegerTypeClass 
  | BN_FloatTypeClass 
  | BN_StructureTypeClass 
  | BN_EnumerationTypeClass 
  | BN_PointerTypeClass 
  | BN_ArrayTypeClass 
  | BN_FunctionTypeClass 

type bn_string_type =
  | BN_AsciiString 
  | BN_Utf16String 
  | BN_Utf32String

type bn_implicit_register_extend =
  | BN_NoExtend
  | BN_ZeroExtendToFullWidth
  | BN_SignExtendToFullWidth

type bn_register_value_type = 
  | BN_EntryValue
  | BN_OffsetFromEntryValue
  | BN_ConstantValue
  | BN_StackFrameOffset
  | BN_UndeterminedValue
  | BN_OffsetFromUndeterminedValue
  | BN_SignedRangeValue
  | BN_UnsignedRangeValue
  | BN_LookupTableValue
  | BN_ComparisonResultValue

type bn_analysis_state =
  | IdleState
  | DisassembleState
  | AnalyzeState

let bn_file_metadata : bn_file_metadata Ctypes.structure typ = structure "BNFileMetadata"
let bn_binary_view : bn_binary_view Ctypes.structure typ = structure "BNBinaryView"
let bn_function : bn_function Ctypes.structure typ = structure "BNFunction"
let bn_binary_viewtype : bn_binary_viewtype Ctypes.structure typ = structure "BNBinaryViewType"
let bn_platform : bn_platform Ctypes.structure typ = structure "BNPlatform"    
let bn_architecture : bn_architecture Ctypes.structure typ = structure "BNArchitecture"
let bn_temporaryfile : bn_temporaryfile Ctypes.structure typ = structure "BNTemporaryFile"
let bn_scripting_provider : bn_scripting_provider Ctypes.structure typ = structure "BNScriptingProvider"
let bn_symbol : bn_symbol Ctypes.structure typ = structure "BNSymbol"
let bn_basicblock : bn_basicblock Ctypes.structure typ = structure "BNBasicBlock"






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
  let data_written = T.field bn_binary_data_notification "dataWritten" (T.static_funptr T.(T.ptr T.void @-> T.ptr T.void @-> T.uint64_t @-> T.size_t @-> returning T.void))
  let data_inserted = T.field bn_binary_data_notification "dataInserted" (T.static_funptr T.(T.ptr T.void @-> T.ptr T.void @-> T.uint64_t @-> T.size_t @-> returning T.void))
  let data_removed = T.field bn_binary_data_notification "dataRemoved" (T.static_funptr T.(T.ptr T.void @-> T.ptr T.void @-> T.uint64_t @-> T.uint64_t @-> returning T.void))
  let function_added = T.field bn_binary_data_notification "functionAdded" (T.static_funptr T.(T.ptr T.void @-> T.ptr T.void @-> T.ptr T.void @-> returning T.void))
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
  let create = T.field bn_custom_binary_view_type "create" (T.static_funptr T.(T.ptr T.void @-> T.ptr T.void @-> returning (T.ptr T.void)))
  let is_valid_for_data = T.field bn_custom_binary_view_type "isValidForData" (T.static_funptr T.(T.ptr T.void @-> T.ptr T.void @-> returning T.bool))
  let () = T.seal bn_custom_binary_view_type

  type bn_transform_parameter_info
  let bn_transform_parameter_info : bn_transform_parameter_info Ctypes.structure T.typ = T.structure "BNTransformParameterInfo"
  let name = T.field bn_transform_parameter_info "name" (T.string)
  let long_name = T.field bn_transform_parameter_info "longName" (T.string)
  let fixed_length = T.field bn_transform_parameter_info "fixedLength" (T.size_t)
  let () = T.seal bn_transform_parameter_info



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

end


module Bindings (T : Cstubs_structs.TYPE with type 'a typ = 'a typ) (F : Cstubs.FOREIGN) =
struct

  module E = Enums (T)
  open F
  let plugin_init_function = T.typedef (T.static_funptr T.(T.void @-> returning T.bool)) "BNCorePluginInitFunction"
  let plugin_dep_function = T.typedef (T.static_funptr T.(T.void @-> returning T.void)) "BNCorePluginDependencyFunction"

  let plugin_action = T.(T.ptr T.void @-> T.ptr bn_binary_view @-> returning T.void)
  let plugin_is_valid = T.(T.ptr T.void @-> T.ptr bn_binary_view @-> returning bool)

  let plugin_action_for_range = T.(T.ptr T.void @-> T.ptr bn_binary_view @-> T.uint64_t @-> T.uint64_t @-> returning T.void)
  let plugin_is_valid_for_range = T.(T.ptr T.void @-> T.ptr bn_binary_view @-> T.uint64_t @-> T.uint64_t @-> returning T.bool)

  let plugin_action_for_address = T.(T.ptr T.void @-> T.ptr bn_binary_view @-> T.uint64_t @-> returning T.void)
  let plugin_is_valid_for_address = T.(T.ptr T.void @-> T.ptr bn_binary_view @-> T.uint64_t @-> returning T.bool)

  let plugin_action_for_function = T.(T.ptr T.void @-> T.ptr bn_binary_view @-> T.ptr bn_function @-> returning T.void) 
  let plugin_is_valid_for_function = T.(T.ptr T.void @-> T.ptr bn_binary_view @-> T.ptr bn_function @-> returning T.bool) 

  let bn_get_build_id = F.foreign "BNGetBuildId" (T.void @-> returning T.uint32_t)

  let bn_shutdown = F.foreign "BNShutdown" (T.void @-> returning T.void)

  let bn_get_version_string = F.foreign "BNGetVersionString" (T.void @-> returning T.string)

  let bn_is_license_validated = F.foreign "BNIsLicenseValidated" (T.void @-> returning T.bool)

  let bn_init_core_plugins = F.foreign "BNInitCorePlugins" (T.void @-> returning T.void)

  let bn_init_user_plugins = F.foreign "BNInitUserPlugins" (T.void @-> returning T.void)

  let bn_get_bundled_plugin_directory = F.foreign "BNGetBundledPluginDirectory" (T.void @-> returning T.string)

  let bn_set_bundled_plugin_directory = F.foreign "BNSetBundledPluginDirectory" (T.string @-> returning T.void)

  let bn_get_user_plugin_directory = F.foreign "BNGetUserPluginDirectory" (T.void @-> returning T.string)

  let bn_log = F.foreign "BNLog" (E.bn_log_level @-> T.string @-> returning T.void)

  let bn_log_debug = F.foreign "BNLogDebug" (T.string @-> returning T.void)


  let bn_alloc_string = F.foreign "BNAllocString" F.( T.string  @-> returning T.string)

  let bn_free_string = F.foreign "BNFreeString" F.( T.string  @-> returning T.void)

  let bn_get_path_relative_to_bundled_plugin_directory = F.foreign "BNGetPathRelativeToBundledPluginDirectory" F.(T.string @-> returning T.string)

  let bn_get_path_relative_to_user_plugin_directory = F.foreign "BNGetPathRelativeToUserPluginDirectory" F.( T.string @-> returning T.string)

  let bn_set_current_plugin_load_order =  F.foreign "BNSetCurrentPluginLoadOrder" F.( E.bn_plugin_load_order  @-> returning T.void)

  let bn_add_required_plugin_dependency =  F.foreign "BNAddRequiredPluginDependency" F.( T.string  @-> returning T.void)

  let bn_add_optional_plugin_dependency = F.foreign "BNAddOptionalPluginDependency" F.( T.string @-> returning T.void) 

  let bn_log = F.foreign "BNLog" F.( E.bn_log_level @-> T.string @-> returning T.void)

  let bn_log_debug = F.foreign "BNLogDebug" F.(T.string  @-> returning T.void)

  let bn_log_info = F.foreign "BNLogInfo" F.( T.string  @-> returning T.void)


  let bn_log_warn = F.foreign "BNLogWarn" F.( T.string  @-> returning T.void)

  let bn_log_error = F.foreign "BNLogError" F.( T.string @-> returning T.void)

  let bn_log_alert = F.foreign "BNLogAlert" F.( T.string  @-> returning T.void)

  let bn_register_log_listener = F.foreign "BNRegisterLogListener" F.( ptr E.bn_log_listener @-> returning T.void)

  let bn_unregister_log_listener = F.foreign "BNUnregisterLogListener" F.( ptr E.bn_log_listener @-> returning T.void)

  let bn_update_log_listeners = F.foreign "BNUpdateLogListeners" F.( T.void @-> returning T.void)

  let bn_log_to_stdout = F.foreign "BNLogToStdout" F.( E.bn_log_level  @-> returning T.void)

  let bn_log_to_stderr = F.foreign "BNLogToStderr" F.( E.bn_log_level  @-> returning T.void)

  let bn_log_to_file = F.foreign "BNLogToFile" F.( E.bn_log_level @-> T.string @-> T.bool @-> returning T.bool) 
  let bn_close_logs = F.foreign "BNCloseLogs" F.(T.void @-> returning T.void)

  let bn_get_scripting_provider_list = F.foreign "BNGetScriptingProviderList" F.(T.ptr T.size_t @-> returning (T.ptr (T.ptr bn_scripting_provider)))

  let bn_get_scripting_provider_name = F.foreign "BNGetScriptingProviderName" F.(T.ptr bn_scripting_provider @-> returning T.string)

  let bn_create_file_metadata = F.foreign "BNCreateFileMetadata" F.( T.void @-> returning (T.ptr bn_file_metadata ))
  let bn_write_view_data = F.foreign "BNWriteViewData" F.( T.ptr bn_binary_view @-> T.uint64_t @-> T.ptr T.void @-> T.size_t @-> returning T.size_t) 
  let bn_get_default_architecture = F.foreign "BNGetDefaultArchitecture" F.( T.ptr bn_binary_view @-> returning (T.ptr bn_architecture))
  let bn_get_default_platform = F.foreign "BNGetDefaultPlatform" F.( T.ptr bn_binary_view @-> returning (T.ptr bn_platform))
  let bn_create_binary_dataview_from_filename = F.foreign "BNCreateBinaryDataViewFromFilename" F.(T.ptr bn_file_metadata @-> T.string @-> returning (T.ptr bn_binary_view))
  let bn_get_binary_view_types = F.foreign "BNGetBinaryViewTypes" F.( T.ptr T.size_t @-> returning (T.ptr (T.ptr bn_binary_viewtype)))
  let bn_get_binary_view_typename = F.foreign "BNGetBinaryViewTypeName" F.( T.ptr bn_binary_viewtype  @-> returning T.string )
  let bn_get_architecture_name = F.foreign "BNGetArchitectureName" F.( T.ptr bn_architecture @-> returning T.string)
  let bn_update_analysis = F.foreign "BNUpdateAnalysis" F.( T.ptr bn_binary_view @-> returning T.void) 
  let bn_get_analysis_progress = F.foreign "BNGetAnalysisProgress" F.( T.ptr bn_binary_view @-> returning E.bn_analysis_progress) 

  let bn_register_plugin_command = F.foreign "BNRegisterPluginCommand" F.( T.string @-> T.string @-> Ctypes.static_funptr plugin_action @-> Ctypes.static_funptr plugin_is_valid @-> T.ptr T.void @-> returning T.void)

  let bn_register_plugin_command_for_range = F.foreign "BNRegisterPluginCommandForRange" F.(T.string @-> T.string @-> Ctypes.static_funptr plugin_action_for_range @-> Ctypes.static_funptr plugin_is_valid_for_range @-> T.ptr T.void @-> returning T.void)

  let bn_register_plugin_command_for_address = F.foreign "BNRegisterPluginCommandForAddress" F.( T.string @-> T.string @-> Ctypes.static_funptr plugin_action_for_address @-> Ctypes.static_funptr plugin_is_valid_for_address @-> T.ptr T.void @-> returning T.void)

  let bn_register_plugin_command_for_function = F.foreign "BNRegisterPluginCommandForFunction" F.(T.string @-> T.string @-> Ctypes.static_funptr plugin_action_for_function @-> Ctypes.static_funptr plugin_is_valid_for_function @-> T.ptr T.void @-> returning T.void)


  let bn_create_platform = F.foreign "BNCreatePlatform" F.(T.ptr bn_architecture @-> T.string @-> returning (T.ptr bn_platform))
  let bn_get_platform_name = F.foreign "BNGetPlatformName" F.( T.ptr bn_platform  @-> returning T.string)
  let bn_get_platform_architecture = F.foreign "BNGetPlatformArchitecture" F.(T.ptr bn_platform @-> returning (T.ptr bn_architecture))

  let bn_get_platform_list = F.foreign "BNGetPlatformList" (T.ptr T.size_t @-> returning (T.ptr (T.ptr bn_platform)))
  let bn_get_platform_list_by_architecture = F.foreign "BNGetPlatformListByArchitecture" (T.ptr bn_architecture @-> T.ptr T.size_t @-> returning (T.ptr (T.ptr bn_platform)))
  let bn_get_platform_list_by_os = F.foreign "BNGetPlatformListByOS" (T.string @-> T.ptr T.size_t @-> returning (T.ptr (T.ptr bn_platform)))
  let bn_get_platform_list_by_os_and_architecture = F.foreign "BNGetPlatformListByOSAndArchitecture" (T.string @-> T.ptr bn_architecture @-> T.ptr T.size_t @-> returning (T.ptr (T.ptr bn_platform)))

  let bn_get_platform_by_name = F.foreign "BNGetPlatformByName" (T.string @-> returning (T.ptr bn_platform))


  (* Function Stuff *)
  let bn_get_function_platform = F.foreign "BNGetFunctionPlatform" (T.ptr bn_function @-> returning (T.ptr bn_platform))

  let bn_get_function_architecture = F.foreign "BNGetFunctionArchitecture" F.( T.ptr bn_function @-> returning (T.ptr bn_architecture))
  let bn_get_function_start = F.foreign "BNGetFunctionStart" F.( T.ptr bn_function @-> returning T.uint64_t)
  let bn_get_function_symbol = F.foreign "BNGetFunctionSymbol" F.( T.ptr bn_function @-> returning (T.ptr bn_symbol)) 
  let bn_was_function_automatically_discovered = F.foreign "BNWasFunctionAutomaticallyDiscovered" F.( T.ptr bn_function @-> returning T.bool)
  let bn_can_function_return = F.foreign "BNCanFunctionReturn" F.( T.ptr bn_function @-> returning T.bool)

  let bn_get_function_basic_block_list = F.foreign "BNGetFunctionBasicBlockList" F.( T.ptr bn_function @-> T.ptr T.size_t @-> returning (T.ptr (T.ptr bn_basicblock)))
      
end
