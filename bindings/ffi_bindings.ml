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
type bnbackground_task
type bn_lowlevelilfunction
type bn_type
type bn_structure
type bnunknown_type
type bn_enumeration
type bn_callingconvention
type bn_platform
type bn_analysis_completionevent
type bnmain_thread_action
type bndisassembly_settings
type bnscripting_instance

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

type bnlineardisassemblylinetype = 
  | BlankLineType
  | CodeDisassemblyLineType
  | DataVariableLineType
  | HexDumpLineType
  | FunctionHeaderLineType
  | FunctionHeaderStartLineType
  | FunctionHeaderEndLineType
  | FunctionContinuationLineType
  | StackVariableLineType
  | StackVariableListEndLineType
  | FunctionEndLineType
  | NoteStartLineType
  | NoteLineType
  | NoteEndLineType
  | SectionStartLineType
  | SectionEndLineType
  | SectionSeparatorLineType
  | NonContiguousSeparatorLineType



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

type bndisassemblyoption = 
  | ShowAddress
  | ShowOpcode
  | ExpandLongOpcode
  | GroupLinearDisassemblyFunctions
  | ShowBasicBlockRegisterState
  | ShowFlagUsage


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

type bnstructuretype = 
  | ClassStructureType
  | StructStructureType
  | UnionStructureType
type bnmemberscope = 
  | NoScope
  | StaticScope
  | VirtualScope
  | ThunkScope
type bnmemberaccess = 
  | NoAccess
  | PrivateAccess
  | ProtectedAccess
  | PublicAccess
type bnreferencetype = 
  | PointerReferenceType
  | ReferenceReferenceType
  | RValueReferenceType
  | NoReference
type bnpointersuffix = 
  | Ptr64Suffix
  | UnalignedSuffix
  | RestrictSuffix
  | ReferenceSuffix
  | LvalueSuffix
type bnnametype = 
  | NoNameType
  | ConstructorNameType
  | DestructorNameType
  | OperatorNewNameType
  | OperatorDeleteNameType
  | OperatorAssignNameType
  | OperatorRightShiftNameType
  | OperatorLeftShiftNameType
  | OperatorNotNameType
  | OperatorEqualNameType
  | OperatorNotEqualNameType
  | OperatorArrayNameType
  | OperatorArrowNameType
  | OperatorStarNameType
  | OperatorIncrementNameType
  | OperatorDecrementNameType
  | OperatorMinusNameType
  | OperatorPlusNameType
  | OperatorBitAndNameType
  | OperatorArrowStarNameType
  | OperatorDivideNameType
  | OperatorModulusNameType
  | OperatorLessThanNameType
  | OperatorLessThanEqualNameType
  | OperatorGreaterThanNameType
  | OperatorGreaterThanEqualNameType
  | OperatorCommaNameType
  | OperatorParenthesesNameType
  | OperatorTildeNameType
  | OperatorXorNameType
  | OperatorBitOrNameType
  | OperatorLogicalAndNameType
  | OperatorLogicalOrNameType
  | OperatorStarEqualNameType
  | OperatorPlusEqualNameType
  | OperatorMinusEqualNameType
  | OperatorDivideEqualNameType
  | OperatorModulusEqualNameType
  | OperatorRightShiftEqualNameType
  | OperatorLeftShiftEqualNameType
  | OperatorAndEqualNameType
  | OperatorOrEqualNameType
  | OperatorXorEqualNameType
  | VFTableNameType
  | VBTableNameType
  | VCallNameType
  | TypeofNameType
  | LocalStaticGuardNameType
  | StringNameType
  | VBaseDestructorNameType
  | VectorDeletingDestructorNameType
  | DefaultConstructorClosureNameType
  | ScalarDeletingDestructorNameType
  | VectorConstructorIteratorNameType
  | VectorDestructorIteratorNameType
  | VectorVBaseConstructorIteratoreNameType
  | VirtualDisplacementMapNameType
  | EHVectorConstructorIteratorNameType
  | EHVectorDestructorIteratorNameType
  | EHVectorVBaseConstructorIteratorNameType
  | CopyConstructorClosureNameType
  | UDTReturningNameType
  | LocalVFTableNameType
  | LocalVFTableConstructorClosureNameType
  | OperatorNewArrayNameType
  | OperatorDeleteArrayNameType
  | PlacementDeleteClosureNameType
  | PlacementDeleteClosureArrayNameType
  | OperatorReturnTypeNameType
  | RttiTypeDescriptor
  | RttiBaseClassDescriptor
  | RttiBaseClassArray
  | RttiClassHeirarchyDescriptor
  | RttiCompleteObjectLocator
  | OperatorUnaryMinusNameType
  | OperatorUnaryPlusNameType
  | OperatorUnaryBitAndNameType
  | OperatorUnaryStarNameType
type bncallingconventionname = 
  | NoCallingConvention
  | CdeclCallingConvention
  | PascalCallingConvention
  | ThisCallCallingConvention
  | STDCallCallingConvention
  | FastcallCallingConvention
  | CLRCallCallingConvention
  | EabiCallCallingConvention
  | VectorCallCallingConvention
type bnintegerdisplaytype = 
  | DefaultIntegerDisplayType
  | BinaryDisplayType
  | SignedOctalDisplayType
  | UnsignedOctalDisplayType
  | SignedDecimalDisplayType
  | UnsignedDecimalDisplayType
  | SignedHexadecimalDisplayType
  | UnsignedHexadecimalDisplayType
  | CharacterConstantDisplayType

type bnimplicitregisterextend = 
  | NoExtend
  | ZeroExtendToFullWidth
  | SignExtendToFullWidth
type bnregistervaluetype = 
  | EntryValue
  | OffsetFromEntryValue
  | ConstantValue
  | StackFrameOffset
  | UndeterminedValue
  | OffsetFromUndeterminedValue
  | SignedRangeValue
  | UnsignedRangeValue
  | LookupTableValue
  | ComparisonResultValue
type bnupdateresult = 
  | UpdateFailed
  | UpdateSuccess
  | AlreadyUpToDate



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

type bnscriptingproviderexecuteresult = 
  | InvalidScriptInput
  | IncompleteScriptInput
  | SuccessfulScriptExecution

type bnscriptingproviderinputreadystate = 
  | NotReadyForInput
  | ReadyForScriptExecution
  | ReadyForScriptProgramInput

type bnhighlightcolorstyle = 
  | StandardHighlightColor
  | MixedHighlightColor
  | CustomHighlightColor
type bnhighlightstandardcolor = 
  | NoHighlightColor
  | BlueHighlightColor
  | GreenHighlightColor
  | CyanHighlightColor
  | RedHighlightColor
  | MagentaHighlightColor
  | YellowHighlightColor
  | OrangeHighlightColor
  | WhiteHighlightColor
  | BlackHighlightColor

type bnmessageboxicon = 
  | InformationIcon
  | QuestionIcon
  | WarningIcon
  | ErrorIcon

type bnmessageboxbuttonset = 
  | OKButtonSet
  | YesNoButtonSet
  | YesNoCancelButtonSet

type bnmessageboxbuttonresult = 
  | NoButton
  | YesButton
  | OKButton
  | CancelButton

type bnforminputfieldtype = 
  | LabelFormField
  | SeparatorFormField
  | TextLineFormField
  | MultilineTextFormField
  | IntegerFormField
  | AddressFormField
  | ChoiceFormField
  | OpenFileNameFormField
  | SaveFileNameFormField
  | DirectoryNameFormField

type bnfindflag = 
  | NoFindFlags
  | FindCaseInsensitive

type bnsegmentflag = 
  | SegmentExecutable
  | SegmentWritable
  | SegmentReadable
  | SegmentContainsData
  | SegmentContainsCode
  | SegmentDenyWrite
  | SegmentDenyExecute

type bn_plugin_command_type = 
  | DefaultPluginCommand
  | AddressPluginCommand
  | RangePluginCommand
  | FunctionPluginCommand

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

module Bindings (T : Cstubs_structs.TYPE with type 'a typ = 'a typ) (F : Cstubs.FOREIGN) =
struct

  module E = Enums (T)
  open E
  open F
  let plugin_init_function = T.typedef (T.static_funptr T.(T.void @-> returning T.bool)) "BNCorePluginInitFunction"
  let plugin_dep_function = T.typedef (T.static_funptr T.(T.void @-> returning T.void)) "BNCorePluginDependencyFunction"

  let plugin_action = T.(T.ptr T.void @-> T.ptr E.bn_binary_view @-> returning T.void)
  let plugin_is_valid = T.(T.ptr T.void @-> T.ptr E.bn_binary_view @-> returning bool)

  let plugin_action_for_range = T.(T.ptr T.void @-> T.ptr E.bn_binary_view @-> T.uint64_t @-> T.uint64_t @-> returning T.void)
  let plugin_is_valid_for_range = T.(T.ptr T.void @-> T.ptr E.bn_binary_view @-> T.uint64_t @-> T.uint64_t @-> returning T.bool)

  let plugin_action_for_address = T.(T.ptr T.void @-> T.ptr E.bn_binary_view @-> T.uint64_t @-> returning T.void)
  let plugin_is_valid_for_address = T.(T.ptr T.void @-> T.ptr E.bn_binary_view @-> T.uint64_t @-> returning T.bool)

  let plugin_action_for_function = T.(T.ptr T.void @-> T.ptr E.bn_binary_view @-> T.ptr E.bn_function @-> returning T.void) 
  let plugin_is_valid_for_function = T.(T.ptr T.void @-> T.ptr E.bn_binary_view @-> T.ptr E.bn_function @-> returning T.bool) 

  let bn_get_build_id = F.foreign "BNGetBuildId" (T.void @-> returning T.uint32_t)

  let bn_shutdown = F.foreign "BNShutdown" (T.void @-> returning T.void)

  let bn_get_version_string = F.foreign "BNGetVersionString" (T.void @-> returning T.string)

  let bn_is_license_validated = F.foreign "BNIsLicenseValidated" (T.void @-> returning T.bool)

  let bnget_product = F.foreign "BNGetProduct" (T.void @-> returning (T.string))

  let bnget_product_type = F.foreign "BNGetProductType" (T.void @-> returning (T.string))

  let bnget_license_count = F.foreign  "BNGetLicenseCount" (T.void @-> returning (T.int ))

  let bn_init_core_plugins = F.foreign "BNInitCorePlugins" (T.void @-> returning T.void)

  let bn_init_user_plugins = F.foreign "BNInitUserPlugins" (T.void @-> returning T.void)

  let bn_get_bundled_plugin_directory = F.foreign "BNGetBundledPluginDirectory" (T.void @-> returning T.string)

  let bn_set_bundled_plugin_directory = F.foreign "BNSetBundledPluginDirectory" (T.string @-> returning T.void)

  let bn_get_user_plugin_directory = F.foreign "BNGetUserPluginDirectory" (T.void @-> returning T.string)

  let bn_log = F.foreign "BNLog" (E.bn_log_level @-> T.string @-> returning T.void)

  let bn_log_debug = F.foreign "BNLogDebug" (T.string @-> returning T.void)


  let bn_alloc_string = F.foreign "BNAllocString" F.( T.string  @-> returning T.string)

  let bn_free_string = F.foreign "BNFreeString" F.( T.string  @-> returning T.void)

  let bnfree_string_list = F.foreign "BNFreeStringList" (T.ptr (T.string) @-> T.int  @-> returning (T.void ))

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

  let bn_get_scripting_provider_list = F.foreign "BNGetScriptingProviderList" F.(T.ptr T.size_t @-> returning (T.ptr (T.ptr E.bn_scripting_provider)))

  let bn_get_scripting_provider_name = F.foreign "BNGetScriptingProviderName" F.(T.ptr E.bn_scripting_provider @-> returning T.string)

  let bn_create_file_metadata = F.foreign "BNCreateFileMetadata" F.( T.void @-> returning (T.ptr E.bn_file_metadata )) 
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


  let bn_create_symbol = F.foreign "BNCreateSymbol" F.( E.bn_symbol_type @-> T.string @-> T.string  @-> T.string @-> T.uint64_t @-> returning (T.ptr bn_symbol))
  let bn_new_symbol_reference = F.foreign "BNNewSymbolReference" F.( T.ptr bn_symbol @-> returning (T.ptr bn_symbol))
  let bn_get_symbol_type = F.foreign "BNGetSymbolType" F.( T.ptr bn_symbol @-> returning (E.bn_symbol_type))
  let bn_get_symbol_shortname = F.foreign "BNGetSymbolShortName" F.( T.ptr bn_symbol @-> returning T.string)
  let bn_get_symbol_fullname = F.foreign "BNGetSymbolFullName" F.( T.ptr bn_symbol @-> returning T.string)
  let bn_get_symbol_rawname = F.foreign "BNGetSymbolRawName" F.( T.ptr bn_symbol @-> returning T.string)
  let bn_get_symbol_address = F.foreign "BNGetSymbolAddress" F.( T.ptr bn_symbol  @-> returning T.uint64_t)
  let bn_is_symbol_autodefined = F.foreign "BNIsSymbolAutoDefined" F.( T.ptr bn_symbol @-> returning T.bool)
  let bn_set_symbol_autodefined = F.foreign "BNSetSymbolAutoDefined" F.( T.ptr bn_symbol @-> T.bool @-> returning T.void)
  let bn_get_symbol_by_address = F.foreign "BNGetSymbolByAddress" F.( T.ptr bn_binary_view @->  T.uint64_t @-> returning (T.ptr bn_symbol))
  let bn_get_symbol_by_rawname = F.foreign "BNGetSymbolByRawName" F.( T.ptr bn_binary_view @->  T.string @-> returning (T.ptr bn_symbol))
  let bn_create_function_graph = F.foreign "BNCreateFunctionGraph" F.(T.ptr bn_function @-> returning (T.ptr bn_functiongraph))
  let bn_new_function_graph_reference = F.foreign "BNNewFunctionGraphReference" F.(T.ptr bn_functiongraph @-> returning (T.ptr bn_functiongraph))

  let bn_free_function_graph = F.foreign "BNFreeFunctionGraph" F.(T.ptr bn_functiongraph @-> returning T.void)

  let bn_get_function_for_function_graph = F.foreign "BNGetFunctionForFunctionGraph" F.(T.ptr bn_functiongraph @-> returning (T.ptr bn_function))

  let bn_get_horizontal_function_graph_block_margin = F.foreign "BNGetHorizontalFunctionGraphBlockMargin" F.( T.ptr bn_functiongraph  @-> returning T.int)

  let bn_get_vertical_function_graph_block_margin = F.foreign "BNGetVerticalFunctionGraphBlockMargin" F.( T.ptr bn_functiongraph @-> returning T.int)

  let bn_set_function_graph_block_margins = F.foreign "BNSetFunctionGraphBlockMargins" F.(T.ptr bn_functiongraph @-> T.int @-> T.int @-> returning T.void)

  let bn_start_function_graph_layout = F.foreign "BNStartFunctionGraphLayout"
      F.( T.ptr bn_functiongraph @-> E.bn_function_graph_type @-> returning T.void)

  let bn_get_function_graph_blocks = F.foreign  "BNGetFunctionGraphBlocks"
      F.(T.ptr bn_functiongraph @-> T.ptr T.size_t @-> returning (T.ptr (T.ptr bn_functiongraphblock )))

  let bnexecute_worker_process = F.foreign  "BNExecuteWorkerProcess"
      (T.string @-> T.ptr T.string_opt @-> T.ptr bn_data_buffer @-> T.ptr ( T.ptr T.char  )@-> T.ptr ( T.ptr T.char ) @-> T.bool @-> T.bool @-> returning (T.bool))

  let bnregister_object_destruction_callbacks = F.foreign  "BNRegisterObjectDestructionCallbacks" (T.ptr bnobject_destruction_callbacks   @-> returning (T.void ))
  let bnunregister_object_destruction_callbacks = F.foreign  "BNUnregisterObjectDestructionCallbacks" (T.ptr bnobject_destruction_callbacks   @-> returning (T.void ))
  let bncreate_temporary_file = F.foreign  "BNCreateTemporaryFile" (T.void @-> returning (T.ptr bn_temporaryfile))

  let bncreate_temporary_file_with_contents = F.foreign  "BNCreateTemporaryFileWithContents" (T.ptr bn_data_buffer @-> returning (T.ptr bn_temporaryfile))
  let bnnew_temporary_file_reference = F.foreign  "BNNewTemporaryFileReference" (T.ptr bn_temporaryfile   @-> returning (T.ptr bn_temporaryfile))

  let bnfree_temporary_file = F.foreign  "BNFreeTemporaryFile" (T.ptr bn_temporaryfile @-> returning (T.void ))

  let bnget_temporary_file_path = F.foreign  "BNGetTemporaryFilePath" (T.ptr bn_temporaryfile   @-> returning (T.string))

  let bnget_temporary_file_contents = F.foreign  "BNGetTemporaryFileContents"
      (T.ptr bn_temporaryfile @-> returning (T.ptr bn_data_buffer))

  let bncreate_data_buffer = F.foreign  "BNCreateDataBuffer" (T.ptr T.void @-> T.size_t  @-> returning (T.ptr bn_data_buffer))

  let bnduplicate_data_buffer = F.foreign  "BNDuplicateDataBuffer" (T.ptr bn_data_buffer @-> returning (T.ptr bn_data_buffer))

  let bnfree_data_buffer = F.foreign  "BNFreeDataBuffer" (T.ptr bn_data_buffer @-> returning (T.void ))
  let bnget_data_buffer_contents = F.foreign  "BNGetDataBufferContents" (T.ptr bn_data_buffer   @-> returning (T.ptr T.void))
  let bnget_data_buffer_contents_at = F.foreign  "BNGetDataBufferContentsAt" (T.ptr bn_data_buffer @-> T.size_t @-> returning (T.ptr T.void  ))
  let bnget_data_buffer_length = F.foreign  "BNGetDataBufferLength" (T.ptr bn_data_buffer @-> returning (T.size_t ))
  let bnget_data_buffer_slice = F.foreign  "BNGetDataBufferSlice" (T.ptr bn_data_buffer   @-> T.size_t @-> T.size_t  @-> returning (T.ptr bn_data_buffer))
  let bnset_data_buffer_length = F.foreign  "BNSetDataBufferLength" (T.ptr bn_data_buffer @-> T.size_t @-> returning (T.void ))
  let bnclear_data_buffer = F.foreign  "BNClearDataBuffer" (T.ptr bn_data_buffer  @-> returning (T.void ))
  let bnset_data_buffer_contents = F.foreign  "BNSetDataBufferContents" (T.ptr bn_data_buffer   @-> T.ptr T.void   @-> T.size_t @-> returning (T.void ))
  let bnassign_data_buffer = F.foreign  "BNAssignDataBuffer" (T.ptr bn_data_buffer   @-> T.ptr bn_data_buffer   @-> returning (T.void ))
  let bnappend_data_buffer = F.foreign  "BNAppendDataBuffer" (T.ptr bn_data_buffer   @-> T.ptr bn_data_buffer   @-> returning (T.void ))
  let bnappend_data_buffer_contents = F.foreign  "BNAppendDataBufferContents" (T.ptr bn_data_buffer   @-> T.ptr T.void   @-> T.size_t @-> returning (T.void ))
  let bnget_data_buffer_byte = F.foreign  "BNGetDataBufferByte" (T.ptr bn_data_buffer   @-> T.size_t @-> returning (T.uint8_t ))
  let bnset_data_buffer_byte = F.foreign  "BNSetDataBufferByte" (T.ptr bn_data_buffer   @-> T.size_t @-> T.uint8_t  @-> returning (T.void ))
  let bndata_buffer_to_escaped_string = F.foreign  "BNDataBufferToEscapedString" (T.ptr bn_data_buffer   @-> returning (T.string  ))
  let bndecode_escaped_string = F.foreign  "BNDecodeEscapedString" (T.string   @-> returning (T.ptr bn_data_buffer  ))
  let bndata_buffer_to_base64 = F.foreign  "BNDataBufferToBase64" (T.ptr bn_data_buffer   @-> returning (T.string  ))
  let bndecode_base64 = F.foreign  "BNDecodeBase64" (T.string   @-> returning (T.ptr bn_data_buffer))
  let bnzlib_compress = F.foreign  "BNZlibCompress" (T.ptr bn_data_buffer   @-> returning (T.ptr bn_data_buffer))
  let bnzlib_decompress = F.foreign  "BNZlibDecompress" (T.ptr bn_data_buffer   @-> returning (T.ptr bn_data_buffer))

  let bncreate_file_metadata = F.foreign  "BNCreateFileMetadata" (T.void @-> returning (T.ptr bn_file_metadata  ))
  let bnnew_file_reference = F.foreign  "BNNewFileReference" (T.ptr bn_file_metadata   @-> returning (T.ptr bn_file_metadata  ))
  let bnfree_file_metadata = F.foreign  "BNFreeFileMetadata" (T.ptr bn_file_metadata   @-> returning (T.void ))
  let bnclose_file = F.foreign  "BNCloseFile" (T.ptr bn_file_metadata   @-> returning (T.void ))
  let bnset_file_metadata_navigation_handler = F.foreign  "BNSetFileMetadataNavigationHandler" (T.ptr bn_file_metadata   @-> T.ptr E.bn_navigation_handler   @-> returning (T.void ))
  let bnis_file_modified = F.foreign  "BNIsFileModified" (T.ptr bn_file_metadata @-> returning (T.bool ))
  let bnis_analysis_changed = F.foreign  "BNIsAnalysisChanged" (T.ptr bn_file_metadata @-> returning (T.bool ))
  let bnmark_file_modified = F.foreign  "BNMarkFileModified" (T.ptr bn_file_metadata   @-> returning (T.void ))
  let bnmark_file_saved = F.foreign  "BNMarkFileSaved" (T.ptr bn_file_metadata   @-> returning (T.void ))
  let bnis_backed_by_database = F.foreign  "BNIsBackedByDatabase" (T.ptr bn_file_metadata @-> returning (T.bool ))
  let bncreate_database = F.foreign  "BNCreateDatabase" (T.ptr bn_binary_view @-> T.string @-> returning (T.int ))

  let bncreate_database_with_progress = F.foreign  "BNCreateDatabaseWithProgress"
      (T.ptr bn_binary_view @-> T.string @-> T.ptr T.void @-> (T.static_funptr T.(T.ptr T.void @-> T.size_t @-> T.size_t @-> returning T.void)) @-> 
       returning (T.bool ))

  let bnopen_existing_database = F.foreign  "BNOpenExistingDatabase" (T.ptr bn_file_metadata @-> T.string @-> returning (T.ptr bn_binary_view  ))
  let bnopen_existing_database_with_progress = F.foreign  "BNOpenExistingDatabaseWithProgress" (T.ptr bn_file_metadata   @-> T.string   @-> T.ptr T.void   @-> (T.static_funptr T.(T.ptr T.void @-> T.size_t @-> T.size_t @-> returning T.void))  @-> returning (T.ptr bn_binary_view  ))
  let bnsave_auto_snapshot = F.foreign  "BNSaveAutoSnapshot" (T.ptr bn_binary_view @-> returning (T.bool))
  let bnsave_auto_snapshot_with_progress = F.foreign  "BNSaveAutoSnapshotWithProgress"
      (T.ptr bn_binary_view @-> T.ptr T.void @-> (T.static_funptr T.(T.ptr T.void @-> T.size_t @-> T.size_t @-> returning T.void))  @-> returning (T.bool ))
  let bnget_filename = F.foreign  "BNGetFilename" (T.ptr bn_file_metadata   @-> returning (T.string  ))
  let bnset_filename = F.foreign  "BNSetFilename" (T.ptr bn_file_metadata   @-> T.string   @-> returning (T.void ))
  let bnregister_undo_action_type = F.foreign  "BNRegisterUndoActionType"
      (T.string   @-> T.ptr T.void   @-> (T.static_funptr T.(T.ptr T.void @-> T.string @-> T.ptr bnundo_action @-> returning T.bool)) @-> returning (T.void ))
  let bnbegin_undo_actions = F.foreign  "BNBeginUndoActions" (T.ptr bn_file_metadata @-> returning (T.void ))
  let bnadd_undo_action = F.foreign  "BNAddUndoAction" (T.ptr bn_binary_view   @-> T.string   @-> T.ptr bnundo_action   @-> returning (T.void ))
  let bncommit_undo_actions = F.foreign  "BNCommitUndoActions" (T.ptr bn_file_metadata   @-> returning (T.void ))
  let bnundo = F.foreign  "BNUndo" (T.ptr bn_file_metadata @-> returning (T.bool ))
  let bnredo = F.foreign  "BNRedo" (T.ptr bn_file_metadata @-> returning (T.bool ))
  let bnget_current_view = F.foreign  "BNGetCurrentView" (T.ptr bn_file_metadata   @-> returning (T.string))
  let bnget_current_offset = F.foreign  "BNGetCurrentOffset" (T.ptr bn_file_metadata   @-> returning (T.uint64_t ))
  let bnnavigate = F.foreign  "BNNavigate" (T.ptr bn_file_metadata @-> T.string @-> T.uint64_t @-> returning (T.int ))
  let bnget_file_view_of_type = F.foreign  "BNGetFileViewOfType" (T.ptr bn_file_metadata   @-> T.string   @-> returning (T.ptr bn_binary_view  ))



  let bnnew_view_reference = F.foreign  "BNNewViewReference" (T.ptr bn_binary_view   @-> returning (T.ptr bn_binary_view  ))
  let bnfree_binary_view = F.foreign  "BNFreeBinaryView" (T.ptr bn_binary_view   @-> returning (T.void ))
  let bnget_file_for_view = F.foreign  "BNGetFileForView" (T.ptr bn_binary_view   @-> returning (T.ptr bn_file_metadata  ))
  let bnget_view_type = F.foreign  "BNGetViewType" (T.ptr bn_binary_view   @-> returning (T.string  ))
  let bnget_parent_view = F.foreign  "BNGetParentView" (T.ptr bn_binary_view   @-> returning (T.ptr bn_binary_view  ))
  let bnread_view_data = F.foreign  "BNReadViewData" (T.ptr bn_binary_view @-> T.ptr T.void @-> T.uint64_t @-> T.size_t @-> returning (T.size_t))
  let bnread_view_buffer = F.foreign  "BNReadViewBuffer" (T.ptr bn_binary_view   @-> T.uint64_t  @-> T.size_t  @-> returning (T.ptr bn_data_buffer))
  let bnwrite_view_data = F.foreign  "BNWriteViewData" (T.ptr bn_binary_view @-> T.uint64_t @-> T.ptr T.void @-> T.size_t @-> returning (T.size_t))
  let bnwrite_view_buffer = F.foreign  "BNWriteViewBuffer" (T.ptr bn_binary_view @-> T.uint64_t @-> T.ptr bn_data_buffer @-> returning (T.size_t))
  let bninsert_view_data = F.foreign  "BNInsertViewData" (T.ptr bn_binary_view @-> T.uint64_t @-> T.ptr T.void @-> T.size_t @-> returning (T.size_t))
  let bninsert_view_buffer = F.foreign  "BNInsertViewBuffer" (T.ptr bn_binary_view @-> T.uint64_t @-> T.ptr bn_data_buffer @-> returning (T.size_t))
  let bnremove_view_data = F.foreign  "BNRemoveViewData" (T.ptr bn_binary_view @-> T.uint64_t @-> T.uint64_t @-> returning (T.int ))
  let bnnotify_data_written = F.foreign  "BNNotifyDataWritten" (T.ptr bn_binary_view   @-> T.uint64_t  @-> T.size_t  @-> returning (T.void ))
  let bnnotify_data_inserted = F.foreign  "BNNotifyDataInserted" (T.ptr bn_binary_view   @-> T.uint64_t  @-> T.size_t  @-> returning (T.void ))
  let bnnotify_data_removed = F.foreign  "BNNotifyDataRemoved" (T.ptr bn_binary_view   @->T.uint64_t  @->T.uint64_t  @-> returning (T.void ))
  let bnget_modification = F.foreign  "BNGetModification" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (E.bn_modification_status ))
  let bnget_modification_array = F.foreign  "BNGetModificationArray" (T.ptr bn_binary_view @-> T.uint64_t @-> T.ptr bn_modification_status @-> T.size_t @-> returning (T.size_t ))
  let bnis_valid_offset = F.foreign  "BNIsValidOffset" ( T.ptr bn_binary_view   @->  T.uint64_t  @-> returning (T.bool ))
  let bnis_offset_readable = F.foreign  "BNIsOffsetReadable" ( T.ptr bn_binary_view   @->  T.uint64_t  @-> returning (T.bool ))
  let bnis_offset_writable = F.foreign  "BNIsOffsetWritable" ( T.ptr bn_binary_view   @->  T.uint64_t  @-> returning (T.bool ))
  let bnis_offset_executable = F.foreign  "BNIsOffsetExecutable" ( T.ptr bn_binary_view   @->  T.uint64_t  @-> returning (T.bool ))
  let bnis_offset_backed_by_file = F.foreign  "BNIsOffsetBackedByFile" ( T.ptr bn_binary_view   @->  T.uint64_t  @-> returning (T.bool ))
  let bnget_next_valid_offset = F.foreign  "BNGetNextValidOffset" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.uint64_t ))
  let bnget_start_offset = F.foreign  "BNGetStartOffset" (T.ptr bn_binary_view   @-> returning (T.uint64_t ))
  let bnget_end_offset = F.foreign  "BNGetEndOffset" (T.ptr bn_binary_view   @-> returning (T.uint64_t ))
  let bnget_view_length = F.foreign  "BNGetViewLength" (T.ptr bn_binary_view   @-> returning (T.uint64_t ))
  let bnget_entry_point = F.foreign  "BNGetEntryPoint" (T.ptr bn_binary_view   @-> returning (T.uint64_t ))
  let bnget_default_architecture = F.foreign  "BNGetDefaultArchitecture" (T.ptr bn_binary_view   @-> returning (T.ptr bn_architecture  ))
  let bnset_default_architecture = F.foreign  "BNSetDefaultArchitecture" (T.ptr bn_binary_view   @-> T.ptr bn_architecture   @-> returning (T.void ))
  let bnget_default_platform = F.foreign  "BNGetDefaultPlatform" (T.ptr bn_binary_view   @-> returning (T.ptr bn_platform  ))
  let bnset_default_platform = F.foreign  "BNSetDefaultPlatform" (T.ptr bn_binary_view   @-> T.ptr bn_platform   @-> returning (T.void ))

  let bnget_default_endianness = F.foreign  "BNGetDefaultEndianness" (T.ptr bn_binary_view   @-> returning (E.bn_endianness))
  let bnget_view_address_size = F.foreign  "BNGetViewAddressSize" (T.ptr bn_binary_view @-> returning (T.size_t ))
  let bnis_view_modified = F.foreign  "BNIsViewModified" ( T.ptr bn_binary_view   @-> returning (T.bool ))
  let bnis_executable_view = F.foreign  "BNIsExecutableView" ( T.ptr bn_binary_view   @-> returning (T.bool ))
  let bnsave_to_file = F.foreign  "BNSaveToFile" ( T.ptr bn_binary_view   @->  T.ptr bn_file_accessor   @-> returning (T.bool ))
  let bnsave_to_filename = F.foreign  "BNSaveToFilename" ( T.ptr bn_binary_view   @->  T.string   @-> returning (T.bool ))
  let bnregister_data_notification = F.foreign  "BNRegisterDataNotification" (T.ptr bn_binary_view   @-> T.ptr E.bn_binary_data_notification   @-> returning (T.void ))
  let bnunregister_data_notification = F.foreign  "BNUnregisterDataNotification" (T.ptr bn_binary_view   @-> T.ptr E.bn_binary_data_notification   @-> returning (T.void ))

  let bnis_invert_branch_patch_available = F.foreign  "BNIsInvertBranchPatchAvailable" ( T.ptr bn_binary_view   @->  T.ptr bn_architecture   @->  uint64_t  @-> returning (T.bool ))
  let bnis_skip_and_return_zero_patch_available = F.foreign  "BNIsSkipAndReturnZeroPatchAvailable" ( T.ptr bn_binary_view   @->  T.ptr bn_architecture   @->  uint64_t  @-> returning (T.bool ))
  let bnis_skip_and_return_value_patch_available = F.foreign  "BNIsSkipAndReturnValuePatchAvailable" ( T.ptr bn_binary_view   @->  T.ptr bn_architecture   @->  uint64_t  @-> returning (T.bool ))
  let bnconvert_to_nop = F.foreign  "BNConvertToNop" ( T.ptr bn_binary_view   @->  T.ptr bn_architecture   @->  uint64_t  @-> returning (T.bool ))
  let bnalways_branch = F.foreign  "BNAlwaysBranch" ( T.ptr bn_binary_view   @->  T.ptr bn_architecture   @->  uint64_t  @-> returning (T.bool ))
  let bninvert_branch = F.foreign  "BNInvertBranch" ( T.ptr bn_binary_view   @->  T.ptr bn_architecture   @->  uint64_t  @-> returning (T.bool ))
  let bnskip_and_return_value = F.foreign  "BNSkipAndReturnValue" ( T.ptr bn_binary_view   @->  T.ptr bn_architecture   @->  uint64_t  @->  uint64_t  @-> returning (T.bool ))
  let bnget_instruction_length = F.foreign  "BNGetInstructionLength" (T.ptr bn_binary_view @-> T.ptr bn_architecture @-> T.uint64_t @-> returning (T.size_t )) 
  let bnfind_next_data = F.foreign  "BNFindNextData" ( T.ptr bn_binary_view   @->  uint64_t  @->  T.ptr bn_data_buffer   @->  T.ptr uint64_t   @->  bnfindflag  @-> returning (T.bool ))

  let bnadd_auto_segment = F.foreign  "BNAddAutoSegment" (T.ptr bn_binary_view   @->T.uint64_t  @->T.uint64_t  @->T.uint64_t  @->T.uint64_t  @->T.uint32_t  @-> returning (T.void ))
  let bnremove_auto_segment = F.foreign  "BNRemoveAutoSegment" (T.ptr bn_binary_view   @->T.uint64_t  @->T.uint64_t  @-> returning (T.void ))
  let bnadd_user_segment = F.foreign  "BNAddUserSegment" (T.ptr bn_binary_view   @->T.uint64_t  @->T.uint64_t  @->T.uint64_t  @->T.uint64_t  @->T.uint32_t  @-> returning (T.void ))
  let bnremove_user_segment = F.foreign  "BNRemoveUserSegment" (T.ptr bn_binary_view   @->T.uint64_t  @->T.uint64_t  @-> returning (T.void ))
  let bnget_segments = F.foreign  "BNGetSegments" (T.ptr bn_binary_view   @-> T.ptr T.size_t   @-> returning (T.ptr E.bnsegment  ))
  let bnfree_segment_list = F.foreign  "BNFreeSegmentList" (T.ptr E.bnsegment   @-> returning (T.void ))
  let bnget_segment_at = F.foreign  "BNGetSegmentAt" (T.ptr bn_binary_view @-> T.uint64_t @-> T.ptr bnsegment @-> returning (T.bool ))
  let bnadd_auto_section = F.foreign  "BNAddAutoSection" (T.ptr bn_binary_view   @-> T.string   @->T.uint64_t  @->T.uint64_t  @-> T.string   @->T.uint64_t  @->T.uint64_t  @-> T.string   @-> T.string   @->T.uint64_t  @-> returning (T.void ))
  let bnremove_auto_section = F.foreign  "BNRemoveAutoSection" (T.ptr bn_binary_view   @-> T.string   @-> returning (T.void ))
  let bnadd_user_section = F.foreign  "BNAddUserSection" (T.ptr bn_binary_view   @-> T.string   @->T.uint64_t  @->T.uint64_t  @-> T.string   @->T.uint64_t  @->T.uint64_t  @-> T.string   @-> T.string   @->T.uint64_t  @-> returning (T.void ))
  let bnremove_user_section = F.foreign  "BNRemoveUserSection" (T.ptr bn_binary_view   @-> T.string   @-> returning (T.void ))
  let bnget_sections = F.foreign  "BNGetSections" (T.ptr bn_binary_view   @-> T.ptr T.size_t   @-> returning (T.ptr E.bnsection  ))
  let bnget_sections_at = F.foreign  "BNGetSectionsAt" (T.ptr bn_binary_view   @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr E.bnsection  ))
  let bnfree_section_list = F.foreign  "BNFreeSectionList" (T.ptr E.bnsection   @-> T.size_t  @-> returning (T.void ))
  let bnget_section_by_name = F.foreign  "BNGetSectionByName" ( T.ptr bn_binary_view   @->  T.string   @->  T.ptr bnsection   @-> returning (T.bool ))
  let bnfree_section = F.foreign  "BNFreeSection" (T.ptr bnsection   @-> returning (T.void ))
  let bnget_unique_section_names = F.foreign  "BNGetUniqueSectionNames" (T.ptr bn_binary_view   @-> T.ptr T.string    @-> T.int  @-> returning (T.ptr T.string))
  let bnget_allocated_ranges = F.foreign  "BNGetAllocatedRanges" (T.ptr bn_binary_view   @-> T.ptr T.size_t   @-> returning (T.ptr E.bnaddress_range))
  let bnfree_address_ranges = F.foreign  "BNFreeAddressRanges" (T.ptr E.bnaddress_range   @-> returning (T.void ))
  let bncreate_binary_data_view = F.foreign  "BNCreateBinaryDataView" (T.ptr bn_file_metadata   @-> returning (T.ptr bn_binary_view  ))
  let bncreate_binary_data_view_from_buffer = F.foreign  "BNCreateBinaryDataViewFromBuffer" (T.ptr bn_file_metadata   @-> T.ptr bn_data_buffer   @-> returning (T.ptr bn_binary_view  ))
  let bncreate_binary_data_view_from_data = F.foreign  "BNCreateBinaryDataViewFromData" (T.ptr bn_file_metadata   @-> T.ptr T.void   @-> T.int  @-> returning (T.ptr bn_binary_view  ))
  let bncreate_binary_data_view_from_filename = F.foreign  "BNCreateBinaryDataViewFromFilename" (T.ptr bn_file_metadata   @-> T.string   @-> returning (T.ptr bn_binary_view  ))
  let bncreate_binary_data_view_from_file = F.foreign  "BNCreateBinaryDataViewFromFile" (T.ptr bn_file_metadata   @-> T.ptr E.bn_file_accessor   @-> returning (T.ptr bn_binary_view  ))
  let bncreate_custom_binary_view = F.foreign  "BNCreateCustomBinaryView" (T.string   @-> T.ptr bn_file_metadata   @-> T.ptr bn_binary_view   @-> T.ptr E.bn_custom_binary_view   @-> returning (T.ptr bn_binary_view  ))
  let bnget_binary_view_type_by_name = F.foreign  "BNGetBinaryViewTypeByName" (T.string   @-> returning (T.ptr bn_binary_viewtype  ))
  let bnget_binary_view_types = F.foreign  "BNGetBinaryViewTypes" (T.ptr T.size_t   @-> returning (T.ptr ( T.ptr bn_binary_viewtype  )  ))
  let bnget_binary_view_types_for_data = F.foreign  "BNGetBinaryViewTypesForData" (T.ptr bn_binary_view   @-> T.ptr T.size_t   @-> returning (T.ptr ( T.ptr bn_binary_viewtype  )  ))
  let bnfree_binary_view_type_list = F.foreign  "BNFreeBinaryViewTypeList" (T.ptr (T.ptr bn_binary_viewtype) @-> returning (T.void ))
  let bnget_binary_view_type_name = F.foreign  "BNGetBinaryViewTypeName" (T.ptr bn_binary_viewtype   @-> returning (T.string  ))
  let bnget_binary_view_type_long_name = F.foreign  "BNGetBinaryViewTypeLongName" (T.ptr bn_binary_viewtype   @-> returning (T.string  ))
  let bncreate_binary_view_of_type = F.foreign  "BNCreateBinaryViewOfType" (T.ptr bn_binary_viewtype   @-> T.ptr bn_binary_view   @-> returning (T.ptr bn_binary_view  ))
  let bnis_binary_view_type_valid_for_data = F.foreign  "BNIsBinaryViewTypeValidForData" ( T.ptr bn_binary_viewtype   @->  T.ptr bn_binary_view   @-> returning (T.bool ))
  let bnregister_binary_view_type = F.foreign  "BNRegisterBinaryViewType" (T.string   @-> T.string   @-> T.ptr E.bn_custom_binary_view_type   @-> returning (T.ptr bn_binary_viewtype  ))
  let bnregister_architecture_for_view_type = F.foreign  "BNRegisterArchitectureForViewType" (T.ptr bn_binary_viewtype   @->T.uint32_t  @->  E.bn_endianness  @-> T.ptr bn_architecture   @-> returning (T.void ))
  let bnget_architecture_for_view_type = F.foreign  "BNGetArchitectureForViewType" (T.ptr bn_binary_viewtype   @->T.uint32_t  @->  E.bn_endianness  @-> returning (T.ptr bn_architecture  ))
  let bnregister_platform_for_view_type = F.foreign  "BNRegisterPlatformForViewType" (T.ptr bn_binary_viewtype   @->T.uint32_t  @-> T.ptr bn_architecture   @-> T.ptr bn_platform   @-> returning (T.void ))
  let bnregister_default_platform_for_view_type = F.foreign  "BNRegisterDefaultPlatformForViewType" (T.ptr bn_binary_viewtype   @-> T.ptr bn_architecture   @-> T.ptr bn_platform   @-> returning (T.void ))
  let bnget_platform_for_view_type = F.foreign  "BNGetPlatformForViewType" (T.ptr bn_binary_viewtype   @->T.uint32_t  @-> T.ptr bn_architecture   @-> returning (T.ptr bn_platform  ))
  let bncreate_binary_reader = F.foreign  "BNCreateBinaryReader" (T.ptr bn_binary_view   @-> returning (T.ptr bn_binary_reader  ))
  let bnfree_binary_reader = F.foreign  "BNFreeBinaryReader" (T.ptr bn_binary_reader   @-> returning (T.void ))
  let bnget_binary_reader_endianness = F.foreign  "BNGetBinaryReaderEndianness" (T.ptr bn_binary_reader   @-> returning ( E.bn_endianness ))
  let bnset_binary_reader_endianness = F.foreign  "BNSetBinaryReaderEndianness" (T.ptr bn_binary_reader   @->  E.bn_endianness  @-> returning (T.void ))
  let bnread_data = F.foreign  "BNReadData" ( T.ptr bn_binary_reader   @->  T.ptr T.void   @->  T.int  @-> returning (T.bool ))
  let bnread8 = F.foreign  "BNRead8" ( T.ptr bn_binary_reader   @->  T.ptr T.uint8_t   @-> returning (T.bool ))
  let bnread16 = F.foreign  "BNRead16" ( T.ptr bn_binary_reader   @->  T.ptr T.uint16_t   @-> returning (T.bool ))
  let bnread32 = F.foreign  "BNRead32" ( T.ptr bn_binary_reader   @->  T.ptr T.uint32_t   @-> returning (T.bool ))
  let bnread64 = F.foreign  "BNRead64" ( T.ptr bn_binary_reader   @->  T.ptr T.uint64_t   @-> returning (T.bool ))
  let bnread_le16 = F.foreign  "BNReadLE16" ( T.ptr bn_binary_reader   @->  T.ptr T.uint16_t   @-> returning (T.bool ))
  let bnread_le32 = F.foreign  "BNReadLE32" ( T.ptr bn_binary_reader   @->  T.ptr T.uint32_t   @-> returning (T.bool ))
  let bnread_le64 = F.foreign  "BNReadLE64" ( T.ptr bn_binary_reader   @->  T.ptr T.uint64_t   @-> returning (T.bool ))
  let bnread_be16 = F.foreign  "BNReadBE16" ( T.ptr bn_binary_reader   @->  T.ptr T.uint16_t   @-> returning (T.bool ))
  let bnread_be32 = F.foreign  "BNReadBE32" ( T.ptr bn_binary_reader   @->  T.ptr T.uint32_t   @-> returning (T.bool ))
  let bnread_be64 = F.foreign  "BNReadBE64" ( T.ptr bn_binary_reader   @->  T.ptr T.uint64_t   @-> returning (T.bool ))

  let bnget_reader_position = F.foreign  "BNGetReaderPosition" (T.ptr bn_binary_reader   @-> returning (T.uint64_t ))
  let bnseek_binary_reader = F.foreign  "BNSeekBinaryReader" (T.ptr bn_binary_reader   @->T.uint64_t  @-> returning (T.void ))
  let bnseek_binary_reader_relative = F.foreign  "BNSeekBinaryReaderRelative" (T.ptr bn_binary_reader   @-> T.int64_t  @-> returning (T.void ))
  let bnis_end_of_file = F.foreign  "BNIsEndOfFile" ( T.ptr bn_binary_reader   @-> returning (T.bool ))
  let bncreate_binary_writer = F.foreign  "BNCreateBinaryWriter" (T.ptr bn_binary_view   @-> returning (T.ptr bn_binary_writer  ))
  let bnfree_binary_writer = F.foreign  "BNFreeBinaryWriter" (T.ptr bn_binary_writer   @-> returning (T.void ))
  let bnget_binary_writer_endianness = F.foreign  "BNGetBinaryWriterEndianness" (T.ptr bn_binary_writer   @-> returning ( E.bn_endianness ))
  let bnset_binary_writer_endianness = F.foreign  "BNSetBinaryWriterEndianness" (T.ptr bn_binary_writer   @->  E.bn_endianness  @-> returning (T.void ))
  let bnwrite_data = F.foreign  "BNWriteData" ( T.ptr bn_binary_writer   @->  T.ptr T.void   @->  T.int  @-> returning (T.bool ))
  let bnwrite8 = F.foreign  "BNWrite8" ( T.ptr bn_binary_writer   @->  T.uint8_t  @-> returning (T.bool ))
  let bnwrite16 = F.foreign  "BNWrite16" ( T.ptr bn_binary_writer   @->  T.uint16_t  @-> returning (T.bool ))
  let bnwrite32 = F.foreign  "BNWrite32" ( T.ptr bn_binary_writer   @->  T.uint32_t  @-> returning (T.bool ))
  let bnwrite64 = F.foreign  "BNWrite64" ( T.ptr bn_binary_writer   @->  T.uint64_t  @-> returning (T.bool ))
  let bnwrite_le16 = F.foreign  "BNWriteLE16" ( T.ptr bn_binary_writer   @->  T.uint16_t  @-> returning (T.bool ))
  let bnwrite_le32 = F.foreign  "BNWriteLE32" ( T.ptr bn_binary_writer   @->  T.uint32_t  @-> returning (T.bool ))
  let bnwrite_le64 = F.foreign  "BNWriteLE64" ( T.ptr bn_binary_writer   @->  T.uint64_t  @-> returning (T.bool ))
  let bnwrite_be16 = F.foreign  "BNWriteBE16" ( T.ptr bn_binary_writer   @->  T.uint16_t  @-> returning (T.bool ))
  let bnwrite_be32 = F.foreign  "BNWriteBE32" ( T.ptr bn_binary_writer   @->  T.uint32_t  @-> returning (T.bool ))
  let bnwrite_be64 = F.foreign  "BNWriteBE64" ( T.ptr bn_binary_writer   @->  T.uint64_t  @-> returning (T.bool ))

  let bnget_writer_position = F.foreign  "BNGetWriterPosition" (T.ptr bn_binary_writer   @-> returning (T.uint64_t ))
  let bnseek_binary_writer = F.foreign  "BNSeekBinaryWriter" (T.ptr bn_binary_writer   @->T.uint64_t  @-> returning (T.void ))
  let bnseek_binary_writer_relative = F.foreign  "BNSeekBinaryWriterRelative" (T.ptr bn_binary_writer   @-> T.int64_t  @-> returning (T.void ))
  let bnget_transform_by_name = F.foreign  "BNGetTransformByName" (T.string   @-> returning (T.ptr bn_transform  ))
  let bnget_transform_type_list = F.foreign  "BNGetTransformTypeList" (T.ptr T.size_t @-> returning (T.ptr ( T.ptr bn_transform  )  ))
  let bnfree_transform_type_list = F.foreign  "BNFreeTransformTypeList" (T.ptr ( T.ptr bn_transform  )   @-> returning (T.void ))
  let bnregister_transform_type = F.foreign  "BNRegisterTransformType" ( E.bn_transform_type  @-> T.string   @-> T.string   @-> T.string   @-> T.ptr E.bncustom_transform   @-> returning (T.ptr bn_transform  ))
  let bnget_transform_type = F.foreign  "BNGetTransformType" (T.ptr bn_transform   @-> returning ( E.bn_transform_type ))
  let bnget_transform_name = F.foreign  "BNGetTransformName" (T.ptr bn_transform   @-> returning (T.string  ))
  let bnget_transform_long_name = F.foreign  "BNGetTransformLongName" (T.ptr bn_transform   @-> returning (T.string  ))
  let bnget_transform_group = F.foreign  "BNGetTransformGroup" (T.ptr bn_transform   @-> returning (T.string  ))
  let bnget_transform_parameter_list = F.foreign  "BNGetTransformParameterList" (T.ptr bn_transform   @-> T.ptr T.size_t   @-> returning (T.ptr E.bn_transform_parameter_info  ))
  let bnfree_transform_parameter_list = F.foreign  "BNFreeTransformParameterList" (T.ptr E.bn_transform_parameter_info   @-> T.size_t  @-> returning (T.void ))
  let bndecode = F.foreign  "BNDecode" ( T.ptr bn_transform   @->  T.ptr bn_data_buffer   @->  T.ptr bn_data_buffer   @->  T.ptr bntransform_parameter   @->  T.int  @-> returning (T.bool ))
  let bnencode = F.foreign  "BNEncode" ( T.ptr bn_transform   @->  T.ptr bn_data_buffer   @->  T.ptr bn_data_buffer   @->  T.ptr bntransform_parameter   @->  T.int  @-> returning (T.bool ))
  let bnget_architecture_by_name = F.foreign  "BNGetArchitectureByName" (T.string   @-> returning (T.ptr bn_architecture  ))
  let bnget_architecture_list = F.foreign  "BNGetArchitectureList" (T.ptr T.size_t   @-> returning (T.ptr ( T.ptr bn_architecture  )  ))
  let bnfree_architecture_list = F.foreign  "BNFreeArchitectureList" (T.ptr (T.ptr bn_architecture) @-> returning (T.void ))
  (* let bnregister_architecture = F.foreign  "BNRegisterArchitecture" (T.string   @-> T.ptr bn_custom_architecture   @-> returning (T.ptr bn_architecture  )) *)
  let bnget_architecture_name = F.foreign  "BNGetArchitectureName" (T.ptr bn_architecture   @-> returning (T.string  ))
  let bnget_architecture_endianness = F.foreign  "BNGetArchitectureEndianness" (T.ptr bn_architecture   @-> returning ( E.bn_endianness ))
  let bnget_architecture_address_size = F.foreign  "BNGetArchitectureAddressSize" (T.ptr bn_architecture @-> returning (T.size_t ))
  let bnget_architecture_default_integer_size = F.foreign  "BNGetArchitectureDefaultIntegerSize" (T.ptr bn_architecture @-> returning (T.size_t ))
  let bnget_architecture_max_instruction_length = F.foreign  "BNGetArchitectureMaxInstructionLength" (T.ptr bn_architecture @-> returning (T.size_t ))
  let bnget_architecture_opcode_display_length = F.foreign  "BNGetArchitectureOpcodeDisplayLength" (T.ptr bn_architecture @-> returning (T.size_t ))
  let bnget_associated_architecture_by_address = F.foreign  "BNGetAssociatedArchitectureByAddress" (T.ptr bn_architecture   @-> T.ptr T.uint64_t   @-> returning (T.ptr bn_architecture  ))
  let bnget_instruction_info = F.foreign  "BNGetInstructionInfo" ( T.ptr bn_architecture   @->  T.ptr T.uint8_t   @->  T.uint64_t  @->  T.size_t  @->  T.ptr bninstruction_info   @-> returning (T.bool ))
  let bnget_instruction_text = F.foreign  "BNGetInstructionText" ( T.ptr bn_architecture   @->  T.ptr uint8_t   @->  T.uint64_t  @->  T.ptr T.size_t   @->  T.ptr (T.ptr bninstruction_text_token)    @->  T.ptr T.size_t   @-> returning (T.bool ))
  let bnget_instruction_low_level_il = F.foreign  "BNGetInstructionLowLevelIL" ( T.ptr bn_architecture   @->  T.ptr uint8_t   @->  T.uint64_t  @->  T.ptr T.size_t   @->  T.ptr bn_lowlevelilfunction   @-> returning (T.bool ))
  let bnfree_instruction_text = F.foreign  "BNFreeInstructionText" (T.ptr E.bninstruction_text_token   @-> T.size_t  @-> returning (T.void ))
  let bnget_architecture_register_name = F.foreign  "BNGetArchitectureRegisterName" (T.ptr bn_architecture   @->T.uint32_t  @-> returning (T.string  ))
  let bnget_architecture_flag_name = F.foreign  "BNGetArchitectureFlagName" (T.ptr bn_architecture   @->T.uint32_t  @-> returning (T.string  ))
  let bnget_architecture_flag_write_type_name = F.foreign  "BNGetArchitectureFlagWriteTypeName" (T.ptr bn_architecture   @->T.uint32_t  @-> returning (T.string  ))
  let bnget_full_width_architecture_registers = F.foreign  "BNGetFullWidthArchitectureRegisters" (T.ptr bn_architecture   @-> T.ptr T.size_t   @-> returning (T.ptr T.uint32_t  ))
  let bnget_all_architecture_registers = F.foreign  "BNGetAllArchitectureRegisters" (T.ptr bn_architecture   @-> T.ptr T.size_t   @-> returning (T.ptr T.uint32_t  ))
  let bnget_all_architecture_flags = F.foreign  "BNGetAllArchitectureFlags" (T.ptr bn_architecture   @-> T.ptr T.size_t   @-> returning (T.ptr T.uint32_t  ))
  let bnget_all_architecture_flag_write_types = F.foreign  "BNGetAllArchitectureFlagWriteTypes" (T.ptr bn_architecture   @-> T.ptr T.size_t   @-> returning (T.ptr T.uint32_t  ))
  let bnget_architecture_flag_role = F.foreign  "BNGetArchitectureFlagRole" (T.ptr bn_architecture   @->T.uint32_t  @-> returning ( E.bn_flag_role ))
  let bnget_architecture_flags_required_for_flag_condition = F.foreign  "BNGetArchitectureFlagsRequiredForFlagCondition" (T.ptr bn_architecture   @-> E.bn_lowlevel_il_flag_condition  @-> T.ptr T.size_t   @-> returning (T.ptr T.uint32_t  ))
  let bnget_architecture_flags_written_by_flag_write_type = F.foreign  "BNGetArchitectureFlagsWrittenByFlagWriteType" (T.ptr bn_architecture   @->T.uint32_t  @-> T.ptr T.size_t   @-> returning (T.ptr T.uint32_t  ))
  let bnget_architecture_flag_write_low_level_il = F.foreign  "BNGetArchitectureFlagWriteLowLevelIL"
      (T.ptr bn_architecture @-> bn_low_level_il_operation @-> T.size_t @-> T.uint32_t @-> T.uint32_t @-> T.ptr bn_register_or_constant @-> T.size_t @-> T.ptr bn_lowlevelilfunction @-> returning (T.size_t ))
  let bnget_default_architecture_flag_write_low_level_il = F.foreign  "BNGetDefaultArchitectureFlagWriteLowLevelIL" 
      (T.ptr bn_architecture @-> bn_low_level_il_operation @-> T.size_t @-> T.uint32_t @-> T.uint32_t @-> T.ptr bn_register_or_constant @-> T.size_t @-> T.ptr bn_lowlevelilfunction @-> returning (T.size_t ))
  let bnget_architecture_flag_condition_low_level_il = F.foreign  "BNGetArchitectureFlagConditionLowLevelIL"
      (T.ptr bn_architecture @-> bn_lowlevel_il_flag_condition @-> T.ptr bn_lowlevelilfunction @-> returning (T.size_t))

  let bnget_modified_architecture_registers_on_write = F.foreign  "BNGetModifiedArchitectureRegistersOnWrite" (T.ptr bn_architecture   @->T.uint32_t  @-> T.ptr T.size_t   @-> returning (T.ptr T.uint32_t  ))
  let bnfree_register_list = F.foreign  "BNFreeRegisterList" (T.ptr T.uint32_t   @-> returning (T.void ))
  let bnget_architecture_register_info = F.foreign  "BNGetArchitectureRegisterInfo" (T.ptr bn_architecture   @->T.uint32_t  @-> returning (E.bn_register_info ))
  let bnget_architecture_stack_pointer_register = F.foreign  "BNGetArchitectureStackPointerRegister" (T.ptr bn_architecture   @-> returning (T.uint32_t ))
  let bnget_architecture_link_register = F.foreign  "BNGetArchitectureLinkRegister" (T.ptr bn_architecture   @-> returning (T.uint32_t ))
  let bnget_architecture_register_by_name = F.foreign  "BNGetArchitectureRegisterByName" (T.ptr bn_architecture   @-> T.string   @-> returning (uint32_t ))
  (* let bnassemble = F.foreign  "BNAssemble" (returning (T.int )) *)
  (* (\* let bnis_architecture_never_branch_patch_available = F.foreign  "BNIsArchitectureNeverBranchPatchAvailable" (returning (T.int )) *\) *)
  (* (\* let bnis_architecture_always_branch_patch_available = F.foreign  "BNIsArchitectureAlwaysBranchPatchAvailable" (returning (T.int )) *\) *)
  (* (\* let bnis_architecture_invert_branch_patch_available = F.foreign  "BNIsArchitectureInvertBranchPatchAvailable" (returning (T.int )) *\) *)
  (* (\* let bnis_architecture_skip_and_return_zero_patch_available = F.foreign  "BNIsArchitectureSkipAndReturnZeroPatchAvailable" (returning (T.int )) *\) *)
  (* (\* let bnis_architecture_skip_and_return_value_patch_available = F.foreign  "BNIsArchitectureSkipAndReturnValuePatchAvailable" (returning (T.int )) *\) *)
  (* (\* let bnarchitecture_convert_to_nop = F.foreign  "BNArchitectureConvertToNop" (returning (T.int )) *\) *)
  (* (\* let bnarchitecture_always_branch = F.foreign  "BNArchitectureAlwaysBranch" (returning (T.int )) *\) *)
  (* (\* let bnarchitecture_invert_branch = F.foreign  "BNArchitectureInvertBranch" (returning (T.int )) *\) *)
  (* (\* let bnarchitecture_skip_and_return_value = F.foreign  "BNArchitectureSkipAndReturnValue" (returning (T.int )) *\) *)
  let bnregister_architecture_function_recognizer = F.foreign  "BNRegisterArchitectureFunctionRecognizer" (T.ptr bn_architecture   @-> T.ptr E.bnfunction_recognizer   @-> returning (T.void ))
  (* (\* let bnis_binary_view_type_architecture_constant_defined = F.foreign  "BNIsBinaryViewTypeArchitectureConstantDefined" (returning (T.int )) *\) *)
  let bnget_binary_view_type_architecture_constant = F.foreign  "BNGetBinaryViewTypeArchitectureConstant" (T.ptr bn_architecture   @-> T.string   @-> T.string   @->T.uint64_t  @-> returning (uint64_t ))
  let bnset_binary_view_type_architecture_constant = F.foreign  "BNSetBinaryViewTypeArchitectureConstant" (T.ptr bn_architecture   @-> T.string   @-> T.string   @->T.uint64_t  @-> returning (T.void ))
  let bnadd_function_for_analysis = F.foreign  "BNAddFunctionForAnalysis" (T.ptr bn_binary_view   @-> T.ptr bn_platform   @->T.uint64_t  @-> returning (T.void ))
  let bnadd_entry_point_for_analysis = F.foreign  "BNAddEntryPointForAnalysis" (T.ptr bn_binary_view   @-> T.ptr bn_platform   @->T.uint64_t  @-> returning (T.void ))
  let bnremove_analysis_function = F.foreign  "BNRemoveAnalysisFunction" (T.ptr bn_binary_view   @-> T.ptr bn_function   @-> returning (T.void ))
  let bncreate_user_function = F.foreign  "BNCreateUserFunction" (T.ptr bn_binary_view   @-> T.ptr bn_platform   @->T.uint64_t  @-> returning (T.void ))
  let bnremove_user_function = F.foreign  "BNRemoveUserFunction" (T.ptr bn_binary_view   @-> T.ptr bn_function   @-> returning (T.void ))
  let bnupdate_analysis = F.foreign  "BNUpdateAnalysis" (T.ptr bn_binary_view   @-> returning (T.void ))
  let bnabort_analysis = F.foreign  "BNAbortAnalysis" (T.ptr bn_binary_view   @-> returning (T.void ))
  let bnis_function_update_needed = F.foreign  "BNIsFunctionUpdateNeeded" (T.ptr bn_function @-> returning (T.bool ))
  let bnrequest_advanced_function_analysis_data = F.foreign  "BNRequestAdvancedFunctionAnalysisData" (T.ptr bn_function   @-> returning (T.void ))
  let bnrelease_advanced_function_analysis_data = F.foreign  "BNReleaseAdvancedFunctionAnalysisData" (T.ptr bn_function   @-> returning (T.void ))
  let bnrelease_advanced_function_analysis_data_multiple = F.foreign  "BNReleaseAdvancedFunctionAnalysisDataMultiple" (T.ptr bn_function   @-> T.int  @-> returning (T.void ))
  let bnnew_function_reference = F.foreign  "BNNewFunctionReference" (T.ptr bn_function   @-> returning (T.ptr bn_function  ))
  let bnfree_function = F.foreign  "BNFreeFunction" (T.ptr bn_function   @-> returning (T.void ))
  let bnget_analysis_function_list = F.foreign  "BNGetAnalysisFunctionList" (T.ptr bn_binary_view   @-> T.ptr T.size_t   @-> returning (T.ptr ( T.ptr bn_function  )  ))
  let bnfree_function_list = F.foreign  "BNFreeFunctionList" (T.ptr ( T.ptr bn_function  )   @-> T.int  @-> returning (T.void ))
  let bnhas_functions = F.foreign  "BNHasFunctions" (T.ptr bn_binary_view @-> returning (T.bool ))
  let bnget_analysis_function = F.foreign  "BNGetAnalysisFunction" (T.ptr bn_binary_view   @-> T.ptr bn_platform   @->T.uint64_t  @-> returning (T.ptr bn_function  ))
  let bnget_recent_analysis_function_for_address = F.foreign  "BNGetRecentAnalysisFunctionForAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.ptr bn_function  ))
  let bnget_analysis_functions_for_address = F.foreign  "BNGetAnalysisFunctionsForAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr ( T.ptr bn_function  )  ))
  let bnget_analysis_entry_point = F.foreign  "BNGetAnalysisEntryPoint" (T.ptr bn_binary_view   @-> returning (T.ptr bn_function  ))
  let bnget_function_data = F.foreign  "BNGetFunctionData" (T.ptr bn_function   @-> returning (T.ptr bn_binary_view  ))
  let bnget_function_architecture = F.foreign  "BNGetFunctionArchitecture" (T.ptr bn_function   @-> returning (T.ptr bn_architecture  ))
  let bnget_function_platform = F.foreign  "BNGetFunctionPlatform" (T.ptr bn_function   @-> returning (T.ptr bn_platform  ))
  let bnget_function_start = F.foreign  "BNGetFunctionStart" (T.ptr bn_function   @-> returning (uint64_t ))
  let bnget_function_symbol = F.foreign  "BNGetFunctionSymbol" (T.ptr bn_function   @-> returning (T.ptr bn_symbol  ))
  let bnwas_function_automatically_discovered = F.foreign  "BNWasFunctionAutomaticallyDiscovered" (T.ptr bn_function @-> returning (T.bool ))
  let bncan_function_return = F.foreign  "BNCanFunctionReturn" (T.ptr bn_function @-> returning (T.bool ))
  let bnset_function_auto_type = F.foreign  "BNSetFunctionAutoType" (T.ptr bn_function   @-> T.ptr bn_type   @-> returning (T.void ))
  let bnset_function_user_type = F.foreign  "BNSetFunctionUserType" (T.ptr bn_function   @-> T.ptr bn_type   @-> returning (T.void ))
  let bnget_comment_for_address = F.foreign  "BNGetCommentForAddress" (T.ptr bn_function   @->T.uint64_t  @-> returning (T.string  ))
  let bnget_commented_addresses = F.foreign  "BNGetCommentedAddresses" (T.ptr bn_function   @-> T.ptr T.size_t   @-> returning (T.ptr T.uint64_t  ))
  let bnfree_address_list = F.foreign  "BNFreeAddressList" (T.ptr T.uint64_t   @-> returning (T.void ))
  let bnset_comment_for_address = F.foreign  "BNSetCommentForAddress" (T.ptr bn_function   @->T.uint64_t  @-> T.string   @-> returning (T.void ))
  let bnnew_basic_block_reference = F.foreign  "BNNewBasicBlockReference" (T.ptr bn_basicblock   @-> returning (T.ptr bn_basicblock  ))
  let bnfree_basic_block = F.foreign  "BNFreeBasicBlock" (T.ptr bn_basicblock   @-> returning (T.void ))
  let bnget_function_basic_block_list = F.foreign  "BNGetFunctionBasicBlockList" (T.ptr bn_function   @-> T.ptr T.size_t   @-> returning (T.ptr ( T.ptr bn_basicblock  )  ))
  let bnfree_basic_block_list = F.foreign  "BNFreeBasicBlockList" (T.ptr ( T.ptr bn_basicblock  )   @-> T.int  @-> returning (T.void ))
  let bnget_function_basic_block_at_address = F.foreign  "BNGetFunctionBasicBlockAtAddress" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> returning (T.ptr bn_basicblock  ))
  let bnget_recent_basic_block_for_address = F.foreign  "BNGetRecentBasicBlockForAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.ptr bn_basicblock  ))
  let bnget_basic_blocks_for_address = F.foreign  "BNGetBasicBlocksForAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr ( T.ptr bn_basicblock  )  ))
  let bnget_basic_blocks_starting_at_address = F.foreign  "BNGetBasicBlocksStartingAtAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr ( T.ptr bn_basicblock )   ))
  let bnget_function_low_level_il = F.foreign  "BNGetFunctionLowLevelIL" (T.ptr bn_function   @-> returning (T.ptr bn_lowlevelilfunction  ))
  let bnget_low_level_ilfor_instruction = F.foreign  "BNGetLowLevelILForInstruction" (T.ptr bn_function @-> T.ptr bn_architecture @-> T.uint64_t @-> returning (T.size_t ))
  let bnget_low_level_ilexits_for_instruction = F.foreign  "BNGetLowLevelILExitsForInstruction" (T.ptr bn_function @-> T.ptr bn_architecture @-> T.uint64_t @-> T.ptr T.size_t @-> returning (T.ptr T.size_t  ))
  let bnfree_low_level_ilinstruction_list = F.foreign  "BNFreeLowLevelILInstructionList" (T.ptr T.size_t   @-> returning (T.void ))
  let bnget_register_value_at_instruction = F.foreign  "BNGetRegisterValueAtInstruction" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @->T.uint32_t  @-> returning (E.bn_register_value ))
  let bnget_register_value_after_instruction = F.foreign  "BNGetRegisterValueAfterInstruction" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @->T.uint32_t  @-> returning (E.bn_register_value ))
  let bnget_register_value_at_low_level_ilinstruction = F.foreign  "BNGetRegisterValueAtLowLevelILInstruction" (T.ptr bn_function   @-> T.int  @->T.uint32_t  @-> returning (E.bn_register_value ))
  let bnget_register_value_after_low_level_ilinstruction = F.foreign  "BNGetRegisterValueAfterLowLevelILInstruction" (T.ptr bn_function   @-> T.int  @->T.uint32_t  @-> returning (E.bn_register_value ))
  let bnget_stack_contents_at_instruction = F.foreign  "BNGetStackContentsAtInstruction" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> int64_t  @-> T.int  @-> returning (E.bn_register_value ))
  let bnget_stack_contents_after_instruction = F.foreign  "BNGetStackContentsAfterInstruction" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> int64_t  @-> T.int  @-> returning (E.bn_register_value ))
  let bnget_stack_contents_at_low_level_ilinstruction = F.foreign  "BNGetStackContentsAtLowLevelILInstruction" (T.ptr bn_function   @-> T.int  @-> int64_t  @-> T.int  @-> returning (E.bn_register_value ))
  let bnget_stack_contents_after_low_level_ilinstruction = F.foreign  "BNGetStackContentsAfterLowLevelILInstruction" (T.ptr bn_function   @-> T.int  @-> int64_t  @-> T.int  @-> returning (E.bn_register_value ))
  let bnget_parameter_value_at_instruction = F.foreign  "BNGetParameterValueAtInstruction" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> T.ptr bn_type   @-> T.int  @-> returning (E.bn_register_value ))
  let bnget_parameter_value_at_low_level_ilinstruction = F.foreign  "BNGetParameterValueAtLowLevelILInstruction" (T.ptr bn_function   @-> T.int  @-> T.ptr bn_type   @-> T.int  @-> returning (E.bn_register_value ))
  let bnfree_register_value = F.foreign  "BNFreeRegisterValue" (T.ptr E.bn_register_value   @-> returning (T.void ))
  let bnget_registers_read_by_instruction = F.foreign  "BNGetRegistersReadByInstruction" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr T.uint32_t  ))
  let bnget_registers_written_by_instruction = F.foreign  "BNGetRegistersWrittenByInstruction" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr T.uint32_t  ))
  let bnget_stack_variables_referenced_by_instruction = F.foreign  "BNGetStackVariablesReferencedByInstruction" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr bnstack_variable_reference  ))
  let bnfree_stack_variable_reference_list = F.foreign  "BNFreeStackVariableReferenceList" (T.ptr bnstack_variable_reference   @-> T.size_t  @-> returning (T.void ))
  let bnget_constants_referenced_by_instruction = F.foreign  "BNGetConstantsReferencedByInstruction" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr bnconstant_reference))
  let bnfree_constant_reference_list = F.foreign  "BNFreeConstantReferenceList" (T.ptr bnconstant_reference   @-> returning (T.void ))
  let bnget_function_lifted_il = F.foreign  "BNGetFunctionLiftedIL" (T.ptr bn_function   @-> returning (T.ptr bn_lowlevelilfunction  ))
  let bnget_lifted_ilfor_instruction = F.foreign  "BNGetLiftedILForInstruction" (T.ptr bn_function @-> T.ptr bn_architecture @-> T.uint64_t @-> returning (T.size_t ))
  let bnget_lifted_ilflag_uses_for_definition = F.foreign  "BNGetLiftedILFlagUsesForDefinition" (T.ptr bn_function @-> T.ptr T.size_t @-> T.uint32_t @-> T.ptr T.size_t @-> returning (T.ptr T.size_t))
  let bnget_lifted_ilflag_definitions_for_use = F.foreign  "BNGetLiftedILFlagDefinitionsForUse" (T.ptr bn_function @-> T.ptr T.size_t @-> T.uint32_t @-> T.ptr T.size_t @-> returning (T.ptr T.size_t))
  let bnget_flags_read_by_lifted_ilinstruction = F.foreign  "BNGetFlagsReadByLiftedILInstruction" (T.ptr bn_function   @-> T.int  @-> T.ptr T.size_t   @-> returning (T.ptr T.uint32_t))
  let bnget_flags_written_by_lifted_ilinstruction = F.foreign  "BNGetFlagsWrittenByLiftedILInstruction" (T.ptr bn_function   @-> T.int  @-> T.ptr T.size_t   @-> returning (T.ptr T.uint32_t))
  let bnget_function_type = F.foreign  "BNGetFunctionType" (T.ptr bn_function   @-> returning (T.ptr bn_type  ))
  let bnapply_imported_types = F.foreign  "BNApplyImportedTypes" (T.ptr bn_function   @-> T.ptr bn_symbol   @-> returning (T.void ))
  let bnapply_auto_discovered_function_type = F.foreign  "BNApplyAutoDiscoveredFunctionType" (T.ptr bn_function   @-> T.ptr bn_type   @-> returning (T.void ))
  let bnfunction_has_explicitly_defined_type = F.foreign  "BNFunctionHasExplicitlyDefinedType" (T.ptr bn_function @-> returning (T.bool ))
  let bnget_basic_block_function = F.foreign  "BNGetBasicBlockFunction" (T.ptr bn_basicblock   @-> returning (T.ptr bn_function  ))
  let bnget_basic_block_architecture = F.foreign  "BNGetBasicBlockArchitecture" (T.ptr bn_basicblock   @-> returning (T.ptr bn_architecture  ))
  let bnget_basic_block_start = F.foreign  "BNGetBasicBlockStart" (T.ptr bn_basicblock   @-> returning (uint64_t ))
  let bnget_basic_block_end = F.foreign  "BNGetBasicBlockEnd" (T.ptr bn_basicblock   @-> returning (uint64_t ))
  let bnget_basic_block_length = F.foreign  "BNGetBasicBlockLength" (T.ptr bn_basicblock   @-> returning (uint64_t ))
  let bnget_basic_block_outgoing_edges = F.foreign  "BNGetBasicBlockOutgoingEdges" (T.ptr bn_basicblock   @-> T.ptr T.size_t   @-> returning (T.ptr bn_basic_block_edge))
  let bnfree_basic_block_outgoing_edge_list = F.foreign  "BNFreeBasicBlockOutgoingEdgeList" (T.ptr bn_basic_block_edge   @-> returning (T.void ))
  let bnbasic_block_has_undetermined_outgoing_edges = F.foreign  "BNBasicBlockHasUndeterminedOutgoingEdges" (T.ptr bn_basicblock @-> returning (T.bool ))
  let bnget_basic_block_disassembly_text = F.foreign  "BNGetBasicBlockDisassemblyText" (T.ptr bn_basicblock   @-> T.ptr bndisassembly_settings   @-> T.ptr T.size_t   @-> returning (T.ptr bndisassembly_text_line))
  let bnfree_disassembly_text_lines = F.foreign  "BNFreeDisassemblyTextLines" (T.ptr bndisassembly_text_line   @-> T.size_t  @-> returning (T.void ))
  let bnmark_function_as_recently_used = F.foreign  "BNMarkFunctionAsRecentlyUsed" (T.ptr bn_function   @-> returning (T.void ))
  let bnmark_basic_block_as_recently_used = F.foreign  "BNMarkBasicBlockAsRecentlyUsed" (T.ptr bn_basicblock   @-> returning (T.void ))
  let bnget_code_references = F.foreign  "BNGetCodeReferences" (T.ptr bn_binary_view   @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr bnreference_source  ))
  let bnget_code_references_in_range = F.foreign  "BNGetCodeReferencesInRange" (T.ptr bn_binary_view   @->T.uint64_t  @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr bnreference_source  ))
  let bnfree_code_references = F.foreign  "BNFreeCodeReferences" (T.ptr bnreference_source   @-> T.size_t  @-> returning (T.void ))
  let bnregister_global_function_recognizer = F.foreign  "BNRegisterGlobalFunctionRecognizer" (T.ptr bnfunction_recognizer   @-> returning (T.void ))
  let bnget_strings = F.foreign  "BNGetStrings" (T.ptr bn_binary_view   @-> T.ptr T.size_t   @-> returning (T.ptr bnstring_reference  ))
  let bnget_strings_in_range = F.foreign  "BNGetStringsInRange" (T.ptr bn_binary_view   @->T.uint64_t  @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr bnstring_reference  ))
  let bnfree_string_reference_list = F.foreign  "BNFreeStringReferenceList" (T.ptr bnstring_reference   @-> returning (T.void ))
  let bnget_stack_layout = F.foreign  "BNGetStackLayout" (T.ptr bn_function   @-> T.ptr T.size_t   @-> returning (T.ptr bnstack_variable  ))
  let bnfree_stack_layout = F.foreign  "BNFreeStackLayout" (T.ptr bnstack_variable   @-> T.int  @-> returning (T.void ))
  let bncreate_auto_stack_variable = F.foreign  "BNCreateAutoStackVariable" (T.ptr bn_function   @-> int64_t  @-> T.ptr bn_type   @-> T.string   @-> returning (T.void ))
  let bncreate_user_stack_variable = F.foreign  "BNCreateUserStackVariable" (T.ptr bn_function   @-> int64_t  @-> T.ptr bn_type   @-> T.string   @-> returning (T.void ))
  let bndelete_auto_stack_variable = F.foreign  "BNDeleteAutoStackVariable" (T.ptr bn_function   @-> int64_t  @-> returning (T.void ))
  let bndelete_user_stack_variable = F.foreign  "BNDeleteUserStackVariable" (T.ptr bn_function   @-> int64_t  @-> returning (T.void ))
  let bnget_stack_variable_at_frame_offset = F.foreign  "BNGetStackVariableAtFrameOffset"
      (T.ptr bn_function @-> T.ptr T.int64_t @-> T.ptr bnstack_variable @-> returning (T.bool ))
  let bnfree_stack_variable = F.foreign  "BNFreeStackVariable" (T.ptr E.bnstack_variable  @-> returning (T.void ))
  let bnset_auto_indirect_branches = F.foreign  "BNSetAutoIndirectBranches" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> T.ptr E.bnarchitecture_and_address   @-> T.int  @-> returning (T.void ))
  let bnset_user_indirect_branches = F.foreign  "BNSetUserIndirectBranches" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> T.ptr E.bnarchitecture_and_address   @-> T.int  @-> returning (T.void ))
  let bnget_indirect_branches = F.foreign  "BNGetIndirectBranches" (T.ptr bn_function   @-> T.ptr T.size_t   @-> returning (T.ptr E.bnindirect_branch_info  ))
  let bnget_indirect_branches_at = F.foreign  "BNGetIndirectBranchesAt" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr E.bnindirect_branch_info  ))
  let bnfree_indirect_branch_list = F.foreign  "BNFreeIndirectBranchList" (T.ptr E.bnindirect_branch_info   @-> returning (T.void ))
  let bnget_function_block_annotations = F.foreign  "BNGetFunctionBlockAnnotations" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr E.bninstruction_text_line  ))
  let bnfree_instruction_text_lines = F.foreign  "BNFreeInstructionTextLines" (T.ptr E.bninstruction_text_line   @-> T.int  @-> returning (T.void ))
  let bnget_integer_constant_display_type = F.foreign  "BNGetIntegerConstantDisplayType" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @->T.uint64_t  @-> T.int  @-> returning ( E.bnintegerdisplaytype ))
  let bnset_integer_constant_display_type = F.foreign  "BNSetIntegerConstantDisplayType" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @->T.uint64_t  @-> T.int  @->  E.bnintegerdisplaytype  @-> returning (T.void ))
  let bnadd_analysis_completion_event = F.foreign  "BNAddAnalysisCompletionEvent"
      (T.ptr bn_binary_view   @-> T.ptr T.void   @-> T.static_funptr T.(T.ptr T.void @-> returning T.void) @->  returning (T.ptr bn_analysis_completionevent  ))
  let bnnew_analysis_completion_event_reference = F.foreign  "BNNewAnalysisCompletionEventReference" (T.ptr bn_analysis_completionevent   @-> returning (T.ptr bn_analysis_completionevent))
  let bnfree_analysis_completion_event = F.foreign  "BNFreeAnalysisCompletionEvent" (T.ptr bn_analysis_completionevent   @-> returning (T.void ))
  let bncancel_analysis_completion_event = F.foreign  "BNCancelAnalysisCompletionEvent" (T.ptr bn_analysis_completionevent   @-> returning (T.void ))
  let bnget_analysis_progress = F.foreign  "BNGetAnalysisProgress" (T.ptr bn_binary_view   @-> returning (E.bn_analysis_progress ))
  let bnget_next_function_start_after_address = F.foreign  "BNGetNextFunctionStartAfterAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.uint64_t))
  let bnget_next_basic_block_start_after_address = F.foreign  "BNGetNextBasicBlockStartAfterAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.uint64_t ))
  let bnget_next_data_after_address = F.foreign  "BNGetNextDataAfterAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.uint64_t))
  let bnget_next_data_variable_after_address = F.foreign  "BNGetNextDataVariableAfterAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.uint64_t ))
  let bnget_previous_function_start_before_address = F.foreign  "BNGetPreviousFunctionStartBeforeAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.uint64_t ))
  let bnget_previous_basic_block_start_before_address = F.foreign  "BNGetPreviousBasicBlockStartBeforeAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.uint64_t ))
  let bnget_previous_basic_block_end_before_address = F.foreign  "BNGetPreviousBasicBlockEndBeforeAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.uint64_t ))
  let bnget_previous_data_before_address = F.foreign  "BNGetPreviousDataBeforeAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.uint64_t ))
  let bnget_previous_data_variable_before_address = F.foreign  "BNGetPreviousDataVariableBeforeAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.uint64_t ))
  let bnget_linear_disassembly_position_for_address = F.foreign  "BNGetLinearDisassemblyPositionForAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> T.ptr bndisassembly_settings   @-> returning (E.bnlinear_disassembly_position ))
  let bnfree_linear_disassembly_position = F.foreign  "BNFreeLinearDisassemblyPosition" (T.ptr E.bnlinear_disassembly_position   @-> returning (T.void ))
  let bnget_previous_linear_disassembly_lines = F.foreign  "BNGetPreviousLinearDisassemblyLines" (T.ptr bn_binary_view   @-> T.ptr E.bnlinear_disassembly_position   @-> T.ptr bndisassembly_settings   @-> T.ptr T.size_t   @-> returning (T.ptr E.bnlinear_disassembly_line  ))
  let bnget_next_linear_disassembly_lines = F.foreign  "BNGetNextLinearDisassemblyLines" (T.ptr bn_binary_view   @-> T.ptr E.bnlinear_disassembly_position   @-> T.ptr bndisassembly_settings   @-> T.ptr T.size_t   @-> returning (T.ptr E.bnlinear_disassembly_line  ))
  let bnfree_linear_disassembly_lines = F.foreign  "BNFreeLinearDisassemblyLines" (T.ptr E.bnlinear_disassembly_line   @-> T.int  @-> returning (T.void ))
  let bndefine_data_variable = F.foreign  "BNDefineDataVariable" (T.ptr bn_binary_view   @->T.uint64_t  @-> T.ptr bn_type   @-> returning (T.void ))
  let bndefine_user_data_variable = F.foreign  "BNDefineUserDataVariable" (T.ptr bn_binary_view   @->T.uint64_t  @-> T.ptr bn_type   @-> returning (T.void ))
  let bnundefine_data_variable = F.foreign  "BNUndefineDataVariable" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.void ))
  let bnundefine_user_data_variable = F.foreign  "BNUndefineUserDataVariable" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.void ))
  let bnget_data_variables = F.foreign  "BNGetDataVariables" (T.ptr bn_binary_view   @-> T.ptr T.size_t   @-> returning (T.ptr bn_data_variable  ))
  let bnfree_data_variables = F.foreign  "BNFreeDataVariables" (T.ptr bn_data_variable   @-> T.int  @-> returning (T.void ))
  let bnget_data_variable_at_address = F.foreign  "BNGetDataVariableAtAddress" (T.ptr bn_binary_view @-> T.uint64_t @-> T.ptr bn_data_variable @-> returning (T.bool ))
  let bnparse_type_string = F.foreign  "BNParseTypeString" (T.ptr bn_binary_view @-> T.string @-> T.ptr bnname_and_type @-> T.ptr T.string @-> returning (T.bool ))
  let bnfree_name_and_type = F.foreign  "BNFreeNameAndType" (T.ptr bnname_and_type @-> returning (T.void ))
  let bnget_analysis_type_list = F.foreign  "BNGetAnalysisTypeList" (T.ptr bn_binary_view   @-> T.ptr T.size_t   @-> returning (T.ptr bnname_and_type  ))
  let bnfree_type_list = F.foreign  "BNFreeTypeList" (T.ptr bnname_and_type   @-> T.size_t  @-> returning (T.void ))
  let bnget_analysis_type_by_name = F.foreign  "BNGetAnalysisTypeByName" (T.ptr bn_binary_view   @-> T.string   @-> returning (T.ptr bn_type  ))
  let bnis_analysis_type_auto_defined = F.foreign  "BNIsAnalysisTypeAutoDefined" (T.ptr bn_binary_view @-> T.string @-> returning (T.bool ))
  let bndefine_analysis_type = F.foreign  "BNDefineAnalysisType" (T.ptr bn_binary_view   @-> T.string   @-> T.ptr bn_type   @-> returning (T.void ))
  let bndefine_user_analysis_type = F.foreign  "BNDefineUserAnalysisType" (T.ptr bn_binary_view   @-> T.string   @-> T.ptr bn_type   @-> returning (T.void ))
  let bnundefine_analysis_type = F.foreign  "BNUndefineAnalysisType" (T.ptr bn_binary_view   @-> T.string   @-> returning (T.void ))
  let bnundefine_user_analysis_type = F.foreign  "BNUndefineUserAnalysisType" (T.ptr bn_binary_view   @-> T.string   @-> returning (T.void ))
  let bnreanalyze_all_functions = F.foreign  "BNReanalyzeAllFunctions" (T.ptr bn_binary_view   @-> returning (T.void ))
  let bnreanalyze_function = F.foreign  "BNReanalyzeFunction" (T.ptr bn_function   @-> returning (T.void ))
  let bnget_instruction_highlight = F.foreign  "BNGetInstructionHighlight" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> returning (bnhighlight_color ))
  let bnset_auto_instruction_highlight = F.foreign  "BNSetAutoInstructionHighlight" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> bnhighlight_color  @-> returning (T.void ))
  let bnset_user_instruction_highlight = F.foreign  "BNSetUserInstructionHighlight" (T.ptr bn_function   @-> T.ptr bn_architecture   @->T.uint64_t  @-> bnhighlight_color  @-> returning (T.void ))
  let bnget_basic_block_highlight = F.foreign  "BNGetBasicBlockHighlight" (T.ptr bn_basicblock   @-> returning (bnhighlight_color ))
  let bnset_auto_basic_block_highlight = F.foreign  "BNSetAutoBasicBlockHighlight" (T.ptr bn_basicblock   @->E.bnhighlight_color  @-> returning (T.void ))
  let bnset_user_basic_block_highlight = F.foreign  "BNSetUserBasicBlockHighlight" (T.ptr bn_basicblock   @->E.bnhighlight_color  @-> returning (T.void ))
  let bncreate_disassembly_settings = F.foreign  "BNCreateDisassemblySettings" (T.void @-> returning (T.ptr bndisassembly_settings))
  let bnnew_disassembly_settings_reference = F.foreign  "BNNewDisassemblySettingsReference" (T.ptr E.bndisassembly_settings   @-> returning (T.ptr E.bndisassembly_settings  ))
  let bnfree_disassembly_settings = F.foreign  "BNFreeDisassemblySettings" (T.ptr E.bndisassembly_settings   @-> returning (T.void ))
  let bnis_disassembly_settings_option_set = F.foreign  "BNIsDisassemblySettingsOptionSet" (T.ptr bndisassembly_settings @-> bndisassemblyoption @-> returning (T.bool ))
  let bnset_disassembly_settings_option = F.foreign  "BNSetDisassemblySettingsOption" (T.ptr bndisassembly_settings   @->  bndisassemblyoption  @-> T.bool  @-> returning (T.void ))
  let bnget_disassembly_width = F.foreign  "BNGetDisassemblyWidth" (T.ptr bndisassembly_settings @-> returning (T.size_t ))
  let bnset_disassembly_width = F.foreign  "BNSetDisassemblyWidth" (T.ptr E.bndisassembly_settings   @-> T.size_t  @-> returning (T.void ))
  let bnget_disassembly_maximum_symbol_width = F.foreign  "BNGetDisassemblyMaximumSymbolWidth" (T.ptr bndisassembly_settings @-> returning (T.size_t))
  let bnset_disassembly_maximum_symbol_width = F.foreign  "BNSetDisassemblyMaximumSymbolWidth" (T.ptr E.bndisassembly_settings   @-> T.size_t  @-> returning (T.void ))
  let bncreate_function_graph = F.foreign  "BNCreateFunctionGraph" (T.ptr bn_function   @-> returning (T.ptr bn_functiongraph  ))
  let bnnew_function_graph_reference = F.foreign  "BNNewFunctionGraphReference" (T.ptr bn_functiongraph   @-> returning (T.ptr bn_functiongraph  ))
  let bnfree_function_graph = F.foreign  "BNFreeFunctionGraph" (T.ptr bn_functiongraph   @-> returning (T.void ))
  let bnget_function_for_function_graph = F.foreign  "BNGetFunctionForFunctionGraph" (T.ptr bn_functiongraph   @-> returning (T.ptr bn_function  ))
  let bnget_horizontal_function_graph_block_margin = F.foreign  "BNGetHorizontalFunctionGraphBlockMargin" (T.ptr bn_functiongraph   @-> returning (T.int ))
  let bnget_vertical_function_graph_block_margin = F.foreign  "BNGetVerticalFunctionGraphBlockMargin" (T.ptr bn_functiongraph   @-> returning (T.int ))
  let bnset_function_graph_block_margins = F.foreign  "BNSetFunctionGraphBlockMargins" (T.ptr bn_functiongraph   @-> T.int  @-> T.int  @-> returning (T.void ))
  let bnget_function_graph_settings = F.foreign  "BNGetFunctionGraphSettings" (T.ptr bn_functiongraph   @-> returning (T.ptr E.bndisassembly_settings  ))
  let bnstart_function_graph_layout = F.foreign  "BNStartFunctionGraphLayout" (T.ptr bn_functiongraph   @->  bn_function_graph_type  @-> returning (T.void ))
  let bnis_function_graph_layout_complete = F.foreign  "BNIsFunctionGraphLayoutComplete" (T.ptr bn_functiongraph @-> returning (T.bool ))
  let bnset_function_graph_complete_callback = F.foreign  "BNSetFunctionGraphCompleteCallback" (T.ptr bn_functiongraph   @-> T.ptr T.void   @-> T.static_funptr T.(T.ptr void @-> returning (T.ptr T.void))  @-> returning (T.void ))
  let bnabort_function_graph = F.foreign  "BNAbortFunctionGraph" (T.ptr bn_functiongraph   @-> returning (T.void ))
  let bnget_function_graph_type = F.foreign  "BNGetFunctionGraphType" (T.ptr bn_functiongraph   @-> returning ( bn_function_graph_type ))
  let bnget_function_graph_blocks = F.foreign  "BNGetFunctionGraphBlocks" (T.ptr bn_functiongraph   @-> T.ptr T.size_t   @-> returning (T.ptr (T.ptr bn_functiongraphblock)))
  let bnget_function_graph_blocks_in_region = F.foreign  "BNGetFunctionGraphBlocksInRegion" (T.ptr bn_functiongraph   @-> T.int  @-> T.int  @-> T.int  @-> T.int  @-> T.ptr T.size_t   @-> returning (T.ptr (T.ptr bn_functiongraphblock)))
  let bnfree_function_graph_block_list = F.foreign  "BNFreeFunctionGraphBlockList" (T.ptr (T.ptr bn_functiongraphblock)    @-> T.size_t @-> returning (T.void ))
  let bnget_function_graph_width = F.foreign  "BNGetFunctionGraphWidth" (T.ptr bn_functiongraph   @-> returning (T.int ))
  let bnget_function_graph_height = F.foreign  "BNGetFunctionGraphHeight" (T.ptr bn_functiongraph   @-> returning (T.int ))
  let bnis_function_graph_option_set = F.foreign  "BNIsFunctionGraphOptionSet" (T.ptr bn_functiongraph @-> bndisassemblyoption @-> returning (T.bool ))
  let bnset_function_graph_option = F.foreign  "BNSetFunctionGraphOption" (T.ptr bn_functiongraph   @->  bndisassemblyoption  @-> T.bool  @-> returning (T.void ))
  let bnnew_function_graph_block_reference = F.foreign  "BNNewFunctionGraphBlockReference" (T.ptr bn_functiongraphblock   @-> returning (T.ptr bn_functiongraphblock  ))
  let bnfree_function_graph_block = F.foreign  "BNFreeFunctionGraphBlock" (T.ptr bn_functiongraphblock   @-> returning (T.void ))
  let bnget_function_graph_basic_block = F.foreign  "BNGetFunctionGraphBasicBlock" (T.ptr bn_functiongraphblock   @-> returning (T.ptr bn_basicblock  ))
  let bnget_function_graph_block_architecture = F.foreign  "BNGetFunctionGraphBlockArchitecture" (T.ptr bn_functiongraphblock   @-> returning (T.ptr bn_architecture  ))
  let bnget_function_graph_block_start = F.foreign  "BNGetFunctionGraphBlockStart" (T.ptr bn_functiongraphblock   @-> returning (T.uint64_t ))
  let bnget_function_graph_block_end = F.foreign  "BNGetFunctionGraphBlockEnd" (T.ptr bn_functiongraphblock   @-> returning (T.uint64_t ))
  let bnget_function_graph_block_x = F.foreign  "BNGetFunctionGraphBlockX" (T.ptr bn_functiongraphblock   @-> returning (T.int ))
  let bnget_function_graph_block_y = F.foreign  "BNGetFunctionGraphBlockY" (T.ptr bn_functiongraphblock   @-> returning (T.int ))
  let bnget_function_graph_block_width = F.foreign  "BNGetFunctionGraphBlockWidth" (T.ptr bn_functiongraphblock   @-> returning (T.int ))
  let bnget_function_graph_block_height = F.foreign  "BNGetFunctionGraphBlockHeight" (T.ptr bn_functiongraphblock   @-> returning (T.int ))
  let bnget_function_graph_block_lines = F.foreign  "BNGetFunctionGraphBlockLines" (T.ptr bn_functiongraphblock   @-> T.ptr T.size_t   @-> returning (T.ptr E.bndisassembly_text_line  ))
  let bnget_function_graph_block_outgoing_edges = F.foreign  "BNGetFunctionGraphBlockOutgoingEdges" (T.ptr bn_functiongraphblock   @-> T.ptr T.size_t   @-> returning (T.ptr bn_function_graph_edge  ))
  let bnfree_function_graph_block_outgoing_edge_list = F.foreign  "BNFreeFunctionGraphBlockOutgoingEdgeList" (T.ptr bn_function_graph_edge   @-> T.size_t  @-> returning (T.void ))



  let bncreate_symbol = F.foreign  "BNCreateSymbol" ( E.bn_symbol_type  @-> T.string   @-> T.string   @-> T.string   @->T.uint64_t  @-> returning (T.ptr E.bn_symbol  ))
  let bnnew_symbol_reference = F.foreign  "BNNewSymbolReference" (T.ptr bn_symbol  @-> returning (T.ptr bn_symbol ))
  let bnfree_symbol = F.foreign  "BNFreeSymbol" (T.ptr bn_symbol  @-> returning (T.void ))
  let bnget_symbol_type = F.foreign  "BNGetSymbolType" (T.ptr bn_symbol  @-> returning ( E.bn_symbol_type ))
  let bnget_symbol_short_name = F.foreign  "BNGetSymbolShortName" (T.ptr bn_symbol  @-> returning (T.string  ))
  let bnget_symbol_full_name = F.foreign  "BNGetSymbolFullName" (T.ptr bn_symbol  @-> returning (T.string  ))
  let bnget_symbol_raw_name = F.foreign  "BNGetSymbolRawName" (T.ptr bn_symbol  @-> returning (T.string  ))
  let bnget_symbol_address = F.foreign  "BNGetSymbolAddress" (T.ptr bn_symbol  @-> returning (uint64_t ))
  let bnis_symbol_auto_defined = F.foreign  "BNIsSymbolAutoDefined" (T.ptr bn_symbol @-> returning (T.bool ))
  let bnset_symbol_auto_defined = F.foreign  "BNSetSymbolAutoDefined" (T.ptr bn_symbol  @-> bool  @-> returning (T.void ))
  let bnget_symbol_by_address = F.foreign  "BNGetSymbolByAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> returning (T.ptr bn_symbol ))
  let bnget_symbol_by_raw_name = F.foreign  "BNGetSymbolByRawName" (T.ptr bn_binary_view   @-> T.string   @-> returning (T.ptr bn_symbol ))
  let bnget_symbols_by_name = F.foreign  "BNGetSymbolsByName" (T.ptr bn_binary_view   @-> T.string   @-> T.ptr T.size_t   @-> returning (T.ptr (T.ptr bn_symbol  )))
  let bnget_symbols = F.foreign  "BNGetSymbols" (T.ptr bn_binary_view   @-> T.ptr T.size_t   @-> returning (T.ptr (T.ptr bn_symbol  )))
  let bnget_symbols_in_range = F.foreign  "BNGetSymbolsInRange" (T.ptr bn_binary_view   @->T.uint64_t  @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr (T.ptr bn_symbol  )))
  let bnget_symbols_of_type = F.foreign  "BNGetSymbolsOfType" (T.ptr bn_binary_view   @->  E.bn_symbol_type  @-> T.ptr T.size_t   @-> returning (T.ptr (T.ptr bn_symbol  )))
  let bnget_symbols_of_type_in_range = F.foreign  "BNGetSymbolsOfTypeInRange" (T.ptr bn_binary_view   @->  E.bn_symbol_type  @->T.uint64_t  @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr (T.ptr bn_symbol  )))
  let bnfree_symbol_list = F.foreign  "BNFreeSymbolList" (T.ptr (T.ptr bn_symbol)   @-> T.size_t  @-> returning (T.void ))
  let bndefine_auto_symbol = F.foreign  "BNDefineAutoSymbol" (T.ptr bn_binary_view   @-> T.ptr bn_symbol  @-> returning (T.void ))
  let bnundefine_auto_symbol = F.foreign  "BNUndefineAutoSymbol" (T.ptr bn_binary_view   @-> T.ptr bn_symbol   @-> returning (T.void ))
  let bndefine_user_symbol = F.foreign  "BNDefineUserSymbol" (T.ptr bn_binary_view   @-> T.ptr bn_symbol   @-> returning (T.void ))
  let bnundefine_user_symbol = F.foreign  "BNUndefineUserSymbol" (T.ptr bn_binary_view   @-> T.ptr bn_symbol   @-> returning (T.void ))
  let bndefine_imported_function = F.foreign  "BNDefineImportedFunction" (T.ptr bn_binary_view   @-> T.ptr bn_symbol   @-> T.ptr bn_function   @-> returning (T.void ))
  let bndefine_auto_symbol_and_variable_or_function = F.foreign  "BNDefineAutoSymbolAndVariableOrFunction" (T.ptr bn_binary_view   @-> T.ptr bn_platform   @-> T.ptr E.bn_symbol   @-> T.ptr bn_type   @-> returning (T.void ))
  let bnimported_function_from_import_address_symbol = F.foreign  "BNImportedFunctionFromImportAddressSymbol" (T.ptr E.bn_symbol   @->T.uint64_t  @-> returning (T.ptr E.bn_symbol  ))
  let bncreate_low_level_ilfunction = F.foreign  "BNCreateLowLevelILFunction" (T.ptr bn_architecture   @-> T.ptr bn_function   @-> returning (T.ptr E.bn_lowlevelilfunction  ))
  let bnnew_low_level_ilfunction_reference = F.foreign  "BNNewLowLevelILFunctionReference" (T.ptr E.bn_lowlevelilfunction   @-> returning (T.ptr E.bn_lowlevelilfunction  ))
  let bnfree_low_level_ilfunction = F.foreign  "BNFreeLowLevelILFunction" (T.ptr E.bn_lowlevelilfunction   @-> returning (T.void ))
  let bnlow_level_ilget_current_address = F.foreign  "BNLowLevelILGetCurrentAddress" (T.ptr E.bn_lowlevelilfunction   @-> returning (uint64_t ))
  let bnlow_level_ilset_current_address = F.foreign  "BNLowLevelILSetCurrentAddress" (T.ptr E.bn_lowlevelilfunction   @->T.uint64_t  @-> returning (T.void ))
  let bnlow_level_ilclear_indirect_branches = F.foreign  "BNLowLevelILClearIndirectBranches" (T.ptr E.bn_lowlevelilfunction   @-> returning (T.void ))
  let bnlow_level_ilset_indirect_branches = F.foreign  "BNLowLevelILSetIndirectBranches" (T.ptr E.bn_lowlevelilfunction   @-> T.ptr bnarchitecture_and_address   @-> T.int  @-> returning (T.void ))
  let bnlow_level_iladd_expr = F.foreign  "BNLowLevelILAddExpr"
      (T.ptr bn_lowlevelilfunction @-> bn_low_level_il_operation @-> T.size_t @-> T.uint32_t @-> T.uint64_t @-> T.uint64_t @-> T.uint64_t @-> T.uint64_t @-> returning (T.size_t ))
  let bnlow_level_ilset_expr_source_operand = F.foreign  "BNLowLevelILSetExprSourceOperand" (T.ptr E.bn_lowlevelilfunction   @-> T.int  @->T.uint32_t  @-> returning (T.void ))
  let bnlow_level_iladd_instruction = F.foreign  "BNLowLevelILAddInstruction" (T.ptr bn_lowlevelilfunction @-> T.size_t @-> returning (T.size_t))
  let bnlow_level_ilgoto = F.foreign  "BNLowLevelILGoto" (T.ptr bn_lowlevelilfunction @-> T.ptr bn_low_level_il_label @-> returning (T.size_t ))
  let bnlow_level_ilif = F.foreign  "BNLowLevelILIf" (T.ptr bn_lowlevelilfunction @-> T.uint64_t @-> T.ptr bn_low_level_il_label @-> T.ptr bn_low_level_il_label @-> returning T.size_t )
  let bnlow_level_ilinit_label = F.foreign  "BNLowLevelILInitLabel" (T.ptr bn_low_level_il_label   @-> returning (T.void ))
  let bnlow_level_ilmark_label = F.foreign  "BNLowLevelILMarkLabel" (T.ptr E.bn_lowlevelilfunction   @-> T.ptr bn_low_level_il_label   @-> returning (T.void ))
  let bnfinalize_low_level_ilfunction = F.foreign  "BNFinalizeLowLevelILFunction" (T.ptr E.bn_lowlevelilfunction   @-> returning (T.void ))
  let bnlow_level_iladd_label_list = F.foreign  "BNLowLevelILAddLabelList" (T.ptr bn_lowlevelilfunction @-> T.ptr (T.ptr bn_low_level_il_label ) @-> T.size_t @-> returning (T.size_t ))
  let bnlow_level_iladd_operand_list = F.foreign  "BNLowLevelILAddOperandList" (T.ptr bn_lowlevelilfunction @-> T.ptr T.uint64_t @-> T.size_t @-> returning (T.size_t ))
  let bnlow_level_ilget_operand_list = F.foreign  "BNLowLevelILGetOperandList" (T.ptr E.bn_lowlevelilfunction   @-> T.int  @-> T.int  @-> T.ptr T.size_t   @-> returning (T.ptr T.uint64_t  ))
  let bnlow_level_ilfree_operand_list = F.foreign  "BNLowLevelILFreeOperandList" (T.ptr T.uint64_t   @-> returning (T.void ))
  let bnget_low_level_ilby_index = F.foreign  "BNGetLowLevelILByIndex" (T.ptr E.bn_lowlevelilfunction   @-> T.int  @-> returning (bn_low_level_il_instruction ))
  let bnget_low_level_ilindex_for_instruction = F.foreign  "BNGetLowLevelILIndexForInstruction" (T.ptr bn_lowlevelilfunction @-> T.size_t @-> returning (T.size_t ))
  let bnget_low_level_ilinstruction_count = F.foreign  "BNGetLowLevelILInstructionCount" (T.ptr bn_lowlevelilfunction @->returning (T.size_t ))
  let bnadd_low_level_illabel_for_address = F.foreign  "BNAddLowLevelILLabelForAddress" (T.ptr E.bn_lowlevelilfunction   @-> T.ptr bn_architecture   @->T.uint64_t  @-> returning (T.void ))
  let bnget_low_level_illabel_for_address = F.foreign  "BNGetLowLevelILLabelForAddress" (T.ptr E.bn_lowlevelilfunction   @-> T.ptr bn_architecture   @->T.uint64_t  @-> returning (T.ptr bn_low_level_il_label  ))
  let bnget_low_level_ilexpr_text = F.foreign  "BNGetLowLevelILExprText" (T.ptr bn_lowlevelilfunction @-> T.ptr bn_architecture @-> T.size_t @-> T.ptr (T.ptr bninstruction_text_token) @-> T.ptr T.size_t @-> returning (T.bool ))
  let bnget_low_level_ilinstruction_text = F.foreign  "BNGetLowLevelILInstructionText"  (T.ptr bn_lowlevelilfunction @-> T.ptr bn_function @-> T.ptr bn_architecture @-> T.size_t @-> T.ptr (T.ptr bninstruction_text_token) @-> T.ptr T.size_t @-> returning (T.bool ))
  let bnget_low_level_iltemporary_register_count = F.foreign  "BNGetLowLevelILTemporaryRegisterCount" (T.ptr E.bn_lowlevelilfunction   @-> returning (uint32_t ))
  let bnget_low_level_iltemporary_flag_count = F.foreign  "BNGetLowLevelILTemporaryFlagCount" (T.ptr E.bn_lowlevelilfunction   @-> returning (uint32_t ))
  let bnget_low_level_ilbasic_block_list = F.foreign  "BNGetLowLevelILBasicBlockList" (T.ptr E.bn_lowlevelilfunction   @-> T.ptr T.size_t   @-> returning (T.ptr (T.ptr bn_basicblock)))
  let bncreate_void_type = F.foreign  "BNCreateVoidType" (T.void @-> returning (T.ptr bn_type  ))
  let bncreate_bool_type = F.foreign  "BNCreateBoolType" (T.void @-> returning (T.ptr bn_type  ))
  let bncreate_integer_type = F.foreign  "BNCreateIntegerType" (T.size_t @-> T.bool  @-> T.string   @-> returning (T.ptr bn_type  ))
  let bncreate_float_type = F.foreign  "BNCreateFloatType" (T.size_t @-> T.string   @-> returning (T.ptr bn_type  ))
  let bncreate_structure_type = F.foreign  "BNCreateStructureType" (T.ptr bn_structure   @-> returning (T.ptr bn_type  ))
  let bncreate_enumeration_type = F.foreign  "BNCreateEnumerationType" (T.ptr bn_architecture   @-> T.ptr bn_enumeration   @-> T.size_t  @-> T.bool  @-> returning (T.ptr bn_type  ))
  let bncreate_pointer_type = F.foreign  "BNCreatePointerType" (T.ptr bn_architecture   @-> T.ptr bn_type   @-> T.bool  @-> T.bool  @-> E.bnreferencetype  @-> returning (T.ptr bn_type  ))
  let bncreate_array_type = F.foreign  "BNCreateArrayType" (T.ptr bn_type   @->T.uint64_t  @-> returning (T.ptr bn_type  ))
  let bncreate_function_type = F.foreign  "BNCreateFunctionType" (T.ptr bn_type   @-> T.ptr bn_callingconvention   @-> T.ptr bnname_and_type   @-> T.int  @-> bool  @-> returning (T.ptr bn_type  ))
  let bnnew_type_reference = F.foreign  "BNNewTypeReference" (T.ptr bn_type   @-> returning (T.ptr bn_type  ))
  let bnduplicate_type = F.foreign  "BNDuplicateType" (T.ptr bn_type   @-> returning (T.ptr bn_type  ))
  let bnget_type_and_name = F.foreign  "BNGetTypeAndName" (T.ptr bn_type   @-> T.ptr T.string    @-> T.size_t  @-> returning (T.string  ))
  let bnfree_type = F.foreign  "BNFreeType" (T.ptr bn_type   @-> returning (T.void ))

  let bnget_type_class = F.foreign  "BNGetTypeClass" (T.ptr bn_type   @-> returning (bn_type_class ))
  let bnget_type_width = F.foreign  "BNGetTypeWidth" (T.ptr bn_type   @-> returning (uint64_t ))
  let bnget_type_alignment = F.foreign  "BNGetTypeAlignment" (T.ptr bn_type @-> returning (T.size_t ))
  let bnis_type_signed = F.foreign  "BNIsTypeSigned" (T.ptr bn_type @-> returning (T.bool ))
  let bnis_type_const = F.foreign  "BNIsTypeConst" (T.ptr bn_type @-> returning (T.bool ))
  let bnis_type_volatile = F.foreign  "BNIsTypeVolatile" (T.ptr bn_type @-> returning (T.bool ))
  let bnis_type_floating_point = F.foreign  "BNIsTypeFloatingPoint" (T.ptr bn_type @-> returning (T.bool ))
  let bnget_child_type = F.foreign  "BNGetChildType" (T.ptr bn_type   @-> returning (T.ptr bn_type  ))
  let bnget_type_calling_convention = F.foreign  "BNGetTypeCallingConvention" (T.ptr bn_type   @-> returning (T.ptr E.bn_callingconvention  ))
  let bnget_type_parameters = F.foreign  "BNGetTypeParameters" (T.ptr bn_type   @-> T.ptr T.size_t   @-> returning (T.ptr bnname_and_type  ))
  let bnfree_type_parameter_list = F.foreign  "BNFreeTypeParameterList" (T.ptr E.bnname_and_type   @-> T.size_t  @-> returning (T.void ))
  let bntype_has_variable_arguments = F.foreign  "BNTypeHasVariableArguments" (T.ptr bn_type @-> returning (T.bool ))
  let bnfunction_type_can_return = F.foreign  "BNFunctionTypeCanReturn" (T.ptr bn_type @-> returning (T.bool ))
  let bnget_type_structure = F.foreign  "BNGetTypeStructure" (T.ptr bn_type   @-> returning (T.ptr bn_structure  ))
  let bnget_type_enumeration = F.foreign  "BNGetTypeEnumeration" (T.ptr bn_type   @-> returning (T.ptr bn_enumeration  ))
  let bnget_type_element_count = F.foreign  "BNGetTypeElementCount" (T.ptr bn_type   @-> returning (T.uint64_t ))
  let bnset_function_can_return = F.foreign  "BNSetFunctionCanReturn" (T.ptr bn_type   @-> T.bool  @-> returning (T.void ))
  let bnget_type_string = F.foreign  "BNGetTypeString" (T.ptr bn_type   @-> returning (T.string  ))
  let bnget_type_string_before_name = F.foreign  "BNGetTypeStringBeforeName" (T.ptr bn_type   @-> returning (T.string  ))
  let bnget_type_string_after_name = F.foreign  "BNGetTypeStringAfterName" (T.ptr bn_type   @-> returning (T.string  ))
  let bncreate_unknown_named_type = F.foreign  "BNCreateUnknownNamedType" (T.ptr bnunknown_type   @-> returning (T.ptr bn_type  ))
  let bncreate_unknown_type = F.foreign  "BNCreateUnknownType" (T.void @-> returning (T.ptr E.bnunknown_type  ))
  let bnset_unknown_type_name = F.foreign  "BNSetUnknownTypeName" (T.ptr E.bnunknown_type   @-> T.ptr T.string    @-> T.int  @-> returning (T.void ))
  let bnget_unknown_type_name = F.foreign  "BNGetUnknownTypeName" (T.ptr E.bnunknown_type   @-> T.ptr T.size_t   @-> returning (T.ptr T.string   ))
  let bnfree_unknown_type = F.foreign  "BNFreeUnknownType" (T.ptr E.bnunknown_type   @-> returning (T.void ))
  let bnnew_unknown_type_reference = F.foreign  "BNNewUnknownTypeReference" (T.ptr E.bnunknown_type   @-> returning (T.ptr E.bnunknown_type  ))
  let bncreate_structure = F.foreign  "BNCreateStructure" (T.void @-> returning (T.ptr bn_structure  ))
  let bnnew_structure_reference = F.foreign  "BNNewStructureReference" (T.ptr bn_structure   @-> returning (T.ptr bn_structure  ))
  let bnfree_structure = F.foreign  "BNFreeStructure" (T.ptr bn_structure   @-> returning (T.void ))
  let bnget_structure_name = F.foreign  "BNGetStructureName" (T.ptr bn_structure   @-> T.ptr T.size_t   @-> returning (T.ptr T.string   ))
  let bnset_structure_name = F.foreign  "BNSetStructureName" (T.ptr bn_structure   @-> T.ptr T.string    @-> T.size_t  @-> returning (T.void ))
  let bnget_structure_members = F.foreign  "BNGetStructureMembers" (T.ptr bn_structure   @-> T.ptr T.size_t   @-> returning (T.ptr bnstructure_member  ))
  let bnfree_structure_member_list = F.foreign  "BNFreeStructureMemberList" (T.ptr bnstructure_member   @-> T.size_t  @-> returning (T.void ))
  let bnget_structure_width = F.foreign  "BNGetStructureWidth" (T.ptr bn_structure   @-> returning (T.uint64_t ))
  let bnget_structure_alignment = F.foreign  "BNGetStructureAlignment" (T.ptr bn_structure @-> returning (T.size_t))
  let bnis_structure_packed = F.foreign  "BNIsStructurePacked" (T.ptr bn_structure @-> returning (T.bool))
  let bnset_structure_packed = F.foreign  "BNSetStructurePacked" (T.ptr bn_structure   @-> T.bool  @-> returning (T.void ))
  let bnis_structure_union = F.foreign  "BNIsStructureUnion" (T.ptr bn_structure @-> returning (T.bool))
  let bnset_structure_union = F.foreign  "BNSetStructureUnion" (T.ptr bn_structure   @-> T.bool  @-> returning (T.void ))
  let bnadd_structure_member = F.foreign  "BNAddStructureMember" (T.ptr bn_structure   @-> T.ptr bn_type   @-> T.string   @-> returning (T.void ))
  let bnadd_structure_member_at_offset = F.foreign  "BNAddStructureMemberAtOffset" (T.ptr bn_structure   @-> T.ptr bn_type   @-> T.string   @->T.uint64_t  @-> returning (T.void ))
  let bnremove_structure_member = F.foreign  "BNRemoveStructureMember" (T.ptr bn_structure   @-> T.size_t  @-> returning (T.void ))
  let bncreate_enumeration = F.foreign  "BNCreateEnumeration" (T.void @-> returning (T.ptr bn_enumeration  ))
  let bnnew_enumeration_reference = F.foreign  "BNNewEnumerationReference" (T.ptr bn_enumeration   @-> returning (T.ptr bn_enumeration  ))
  let bnfree_enumeration = F.foreign  "BNFreeEnumeration" (T.ptr bn_enumeration   @-> returning (T.void ))
  let bnget_enumeration_name = F.foreign  "BNGetEnumerationName" (T.ptr bn_enumeration   @-> T.ptr T.size_t   @-> returning ( T.ptr T.string   ))
  let bnset_enumeration_name = F.foreign  "BNSetEnumerationName" (T.ptr bn_enumeration   @-> T.ptr T.string    @-> T.int  @-> returning (T.void ))
  let bnget_enumeration_members = F.foreign  "BNGetEnumerationMembers" (T.ptr bn_enumeration   @-> T.ptr T.size_t   @-> returning (T.ptr bnenumeration_member  ))
  let bnfree_enumeration_member_list = F.foreign  "BNFreeEnumerationMemberList" (T.ptr bnenumeration_member   @-> T.size_t  @-> returning (T.void ))
  let bnadd_enumeration_member = F.foreign  "BNAddEnumerationMember" (T.ptr bn_enumeration   @-> T.string   @-> returning (T.void ))
  let bnadd_enumeration_member_with_value = F.foreign  "BNAddEnumerationMemberWithValue" (T.ptr bn_enumeration   @-> T.string   @->T.uint64_t  @-> returning (T.void ))
  let bnpreprocess_source = F.foreign  "BNPreprocessSource"
      (T.string @-> T.string @-> T.ptr T.string @-> T.ptr T.string @-> T.ptr T.string @-> T.size_t @-> returning T.bool)
  let bnparse_types_from_source = F.foreign  "BNParseTypesFromSource"
      (T.ptr bn_architecture @-> T.string @-> T.string @-> T.ptr bntype_parser_result @-> T.ptr T.string @-> T.ptr T.string @-> T.size_t @-> returning T.bool )
  let bnparse_types_from_source_file = F.foreign  "BNParseTypesFromSourceFile"
      (T.ptr bn_architecture @-> T.string @-> T.ptr bntype_parser_result @-> T.ptr T.string @-> T.ptr T.string @-> T.size_t @-> returning T.bool )
  let bnfree_type_parser_result = F.foreign  "BNFreeTypeParserResult" (T.ptr bntype_parser_result   @-> returning (T.void ))
  let bnget_update_channels = F.foreign  "BNGetUpdateChannels" (T.ptr T.size_t   @-> T.ptr T.string    @-> returning (T.ptr E.bnupdate_channel  ))
  let bnfree_update_channel_list = F.foreign  "BNFreeUpdateChannelList" (T.ptr E.bnupdate_channel   @-> T.size_t  @-> returning (T.void ))
  let bnget_update_channel_versions = F.foreign  "BNGetUpdateChannelVersions" (T.string   @-> T.ptr T.size_t   @-> T.ptr T.string    @-> returning (T.ptr E.bnupdate_version  ))
  let bnfree_update_channel_version_list = F.foreign  "BNFreeUpdateChannelVersionList" (T.ptr E.bnupdate_version   @-> T.size_t  @-> returning (T.void ))
  let bnare_updates_available = F.foreign  "BNAreUpdatesAvailable" (T.string @-> T.ptr T.string @-> returning (T.bool ))
  let bnupdate_to_version = F.foreign  "BNUpdateToVersion"
      (T.string   @-> T.string   @-> T.ptr T.string @-> T.static_funptr T.(T.ptr T.void @-> T.uint64_t @-> T.uint64_t @-> returning T.bool) @-> T.ptr T.void   @-> returning (bnupdateresult ))
  let bnupdate_to_latest_version = F.foreign  "BNUpdateToLatestVersion" 
      (T.string   @-> T.ptr T.string @-> T.static_funptr T.(T.ptr T.void @-> T.uint64_t @-> T.uint64_t @-> returning T.bool) @-> T.ptr T.void   @-> returning (bnupdateresult ))
  let bnare_auto_updates_enabled = F.foreign  "BNAreAutoUpdatesEnabled" (T.void @-> returning (T.bool))
  let bnset_auto_updates_enabled = F.foreign  "BNSetAutoUpdatesEnabled" (T.bool  @-> returning (T.void ))
  let bnget_time_since_last_update_check = F.foreign  "BNGetTimeSinceLastUpdateCheck" (T.void @-> returning (T.uint64_t ))
  let bnupdates_checked = F.foreign  "BNUpdatesChecked" (T.void @-> returning (T.void ))
  let bnget_active_update_channel = F.foreign  "BNGetActiveUpdateChannel" (T.void @-> returning (T.string  ))
  let bnset_active_update_channel = F.foreign  "BNSetActiveUpdateChannel" (T.string @-> returning (T.void ))
  let bnis_update_installation_pending = F.foreign  "BNIsUpdateInstallationPending" (T.void @-> returning (T.bool ))
  let bninstall_pending_update = F.foreign  "BNInstallPendingUpdate" (T.ptr T.string @-> returning (T.void ))
  let bnget_all_plugin_commands = F.foreign  "BNGetAllPluginCommands" (T.ptr T.size_t   @-> returning (T.ptr E.bnplugin_command  ))
  let bnget_valid_plugin_commands = F.foreign  "BNGetValidPluginCommands" (T.ptr bn_binary_view   @-> T.ptr T.size_t   @-> returning (T.ptr E.bnplugin_command  ))
  let bnget_valid_plugin_commands_for_address = F.foreign  "BNGetValidPluginCommandsForAddress" (T.ptr bn_binary_view   @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr E.bnplugin_command  ))
  let bnget_valid_plugin_commands_for_range = F.foreign  "BNGetValidPluginCommandsForRange" (T.ptr bn_binary_view   @->T.uint64_t  @->T.uint64_t  @-> T.ptr T.size_t   @-> returning (T.ptr E.bnplugin_command  ))
  let bnget_valid_plugin_commands_for_function = F.foreign  "BNGetValidPluginCommandsForFunction" (T.ptr bn_binary_view   @-> T.ptr bn_function   @-> T.ptr T.size_t   @-> returning (T.ptr E.bnplugin_command  ))
  let bnfree_plugin_command_list = F.foreign  "BNFreePluginCommandList" (T.ptr E.bnplugin_command   @-> returning (T.void ))
  let bncreate_calling_convention = F.foreign  "BNCreateCallingConvention" (T.ptr bn_architecture   @-> T.string   @-> T.ptr E.bncustom_calling_convention   @-> returning (T.ptr E.bn_callingconvention  ))
  let bnregister_calling_convention = F.foreign  "BNRegisterCallingConvention" (T.ptr bn_architecture   @-> T.ptr E.bn_callingconvention   @-> returning (T.void))
  let bnnew_calling_convention_reference = F.foreign  "BNNewCallingConventionReference" (T.ptr E.bn_callingconvention   @-> returning (T.ptr E.bn_callingconvention))
  let bnfree_calling_convention = F.foreign  "BNFreeCallingConvention" (T.ptr E.bn_callingconvention   @-> returning (T.void ))
  let bnget_architecture_calling_conventions = F.foreign  "BNGetArchitectureCallingConventions" (T.ptr bn_architecture   @-> T.ptr T.size_t   @-> returning (T.ptr (T.ptr E.bn_callingconvention)))
  let bnfree_calling_convention_list = F.foreign  "BNFreeCallingConventionList" (T.ptr (T.ptr E.bn_callingconvention) @-> T.size_t  @-> returning (T.void ))
  let bnget_architecture_calling_convention_by_name = F.foreign  "BNGetArchitectureCallingConventionByName" (T.ptr bn_architecture   @-> T.string   @-> returning (T.ptr E.bn_callingconvention))
  let bnget_calling_convention_architecture = F.foreign  "BNGetCallingConventionArchitecture" (T.ptr E.bn_callingconvention   @-> returning (T.ptr bn_architecture  ))
  let bnget_calling_convention_name = F.foreign  "BNGetCallingConventionName" (T.ptr E.bn_callingconvention   @-> returning (T.string  ))
  let bnget_caller_saved_registers = F.foreign  "BNGetCallerSavedRegisters" (T.ptr bn_callingconvention   @-> T.ptr T.size_t   @-> returning (T.ptr T.uint32_t  ))
  let bnget_integer_argument_registers = F.foreign  "BNGetIntegerArgumentRegisters" (T.ptr bn_callingconvention   @-> T.ptr T.size_t   @-> returning (T.ptr T.uint32_t  ))
  let bnget_float_argument_registers = F.foreign  "BNGetFloatArgumentRegisters" (T.ptr bn_callingconvention   @-> T.ptr T.size_t   @-> returning (T.ptr T.uint32_t  ))
  let bnare_argument_registers_shared_index = F.foreign  "BNAreArgumentRegistersSharedIndex" (T.ptr bn_callingconvention @-> returning (T.bool))
  let bnis_stack_reserved_for_argument_registers = F.foreign  "BNIsStackReservedForArgumentRegisters" (T.ptr bn_callingconvention @-> returning (T.bool))
  let bnget_integer_return_value_register = F.foreign  "BNGetIntegerReturnValueRegister" (T.ptr bn_callingconvention   @-> returning (T.uint32_t ))
  let bnget_high_integer_return_value_register = F.foreign  "BNGetHighIntegerReturnValueRegister" (T.ptr bn_callingconvention   @-> returning (T.uint32_t ))
  let bnget_float_return_value_register = F.foreign  "BNGetFloatReturnValueRegister" (T.ptr bn_callingconvention   @-> returning (T.uint32_t))
  let bnget_architecture_default_calling_convention = F.foreign  "BNGetArchitectureDefaultCallingConvention" (T.ptr bn_architecture   @-> returning (T.ptr bn_callingconvention  ))
  let bnget_architecture_cdecl_calling_convention = F.foreign  "BNGetArchitectureCdeclCallingConvention" (T.ptr bn_architecture @-> returning (T.ptr bn_callingconvention  ))
  let bnget_architecture_stdcall_calling_convention = F.foreign  "BNGetArchitectureStdcallCallingConvention" (T.ptr bn_architecture @-> returning (T.ptr bn_callingconvention  ))
  let bnget_architecture_fastcall_calling_convention = F.foreign  "BNGetArchitectureFastcallCallingConvention" (T.ptr bn_architecture  @-> returning (T.ptr bn_callingconvention  ))
  let bnset_architecture_default_calling_convention = F.foreign  "BNSetArchitectureDefaultCallingConvention" (T.ptr bn_architecture   @-> T.ptr bn_callingconvention   @-> returning (T.void ))
  let bnset_architecture_cdecl_calling_convention = F.foreign  "BNSetArchitectureCdeclCallingConvention" (T.ptr bn_architecture   @-> T.ptr bn_callingconvention   @-> returning (T.void ))
  let bnset_architecture_stdcall_calling_convention = F.foreign  "BNSetArchitectureStdcallCallingConvention" (T.ptr bn_architecture   @-> T.ptr bn_callingconvention   @-> returning (T.void ))
  let bnset_architecture_fastcall_calling_convention = F.foreign  "BNSetArchitectureFastcallCallingConvention" (T.ptr bn_architecture   @-> T.ptr bn_callingconvention   @-> returning (T.void ))
  let bncreate_platform = F.foreign  "BNCreatePlatform" (T.ptr bn_architecture   @-> T.string   @-> returning (T.ptr bn_platform  ))
  let bnregister_platform = F.foreign  "BNRegisterPlatform" (T.string   @-> T.ptr bn_platform   @-> returning (T.void ))
  let bnnew_platform_reference = F.foreign  "BNNewPlatformReference" (T.ptr bn_platform   @-> returning (T.ptr bn_platform  ))
  let bnfree_platform = F.foreign  "BNFreePlatform" (T.ptr bn_platform   @-> returning (T.void ))
  let bnget_platform_name = F.foreign  "BNGetPlatformName" (T.ptr bn_platform   @-> returning (T.string  ))
  let bnget_platform_architecture = F.foreign  "BNGetPlatformArchitecture" (T.ptr bn_platform   @-> returning (T.ptr bn_architecture  ))
  let bnget_platform_by_name = F.foreign  "BNGetPlatformByName" (T.string   @-> returning (T.ptr bn_platform  ))
  let bnget_platform_list = F.foreign  "BNGetPlatformList" (T.ptr T.size_t   @-> returning (T.ptr (T.ptr bn_platform)))
  let bnget_platform_list_by_architecture = F.foreign  "BNGetPlatformListByArchitecture" (T.ptr bn_architecture   @-> T.ptr T.size_t   @-> returning (T.ptr (T.ptr bn_platform)))
  let bnget_platform_list_by_os = F.foreign  "BNGetPlatformListByOS" (T.string   @-> T.ptr T.size_t   @-> returning (T.ptr (T.ptr bn_platform)))
  let bnget_platform_list_by_osand_architecture = F.foreign  "BNGetPlatformListByOSAndArchitecture" (T.string   @-> T.ptr bn_architecture   @-> T.ptr T.size_t   @-> returning (T.ptr (T.ptr bn_platform)))
  let bnfree_platform_list = F.foreign  "BNFreePlatformList" (T.ptr (T.ptr bn_platform) @-> T.size_t  @-> returning (T.void ))
  let bnget_platform_oslist = F.foreign  "BNGetPlatformOSList" (T.ptr T.size_t   @-> returning (T.ptr T.string   ))
  let bnfree_platform_oslist = F.foreign  "BNFreePlatformOSList" (T.ptr T.string    @-> T.size_t  @-> returning (T.void ))
  let bnget_platform_default_calling_convention = F.foreign  "BNGetPlatformDefaultCallingConvention" (T.ptr bn_platform   @-> returning (T.ptr bn_callingconvention  ))
  let bnget_platform_cdecl_calling_convention = F.foreign  "BNGetPlatformCdeclCallingConvention" (T.ptr bn_platform   @-> returning (T.ptr bn_callingconvention  ))
  let bnget_platform_stdcall_calling_convention = F.foreign  "BNGetPlatformStdcallCallingConvention" (T.ptr bn_platform   @-> returning (T.ptr bn_callingconvention  ))
  let bnget_platform_fastcall_calling_convention = F.foreign  "BNGetPlatformFastcallCallingConvention" (T.ptr bn_platform   @-> returning (T.ptr bn_callingconvention  ))
  let bnget_platform_calling_conventions = F.foreign  "BNGetPlatformCallingConventions" (T.ptr bn_platform   @-> T.ptr T.size_t   @-> returning (T.ptr (T.ptr bn_callingconvention)))
  let bnget_platform_system_call_convention = F.foreign  "BNGetPlatformSystemCallConvention" (T.ptr bn_platform   @-> returning (T.ptr bn_callingconvention  ))
  let bnregister_platform_calling_convention = F.foreign  "BNRegisterPlatformCallingConvention" (T.ptr bn_platform   @-> T.ptr bn_callingconvention   @-> returning (T.void ))
  let bnregister_platform_default_calling_convention = F.foreign  "BNRegisterPlatformDefaultCallingConvention" (T.ptr bn_platform   @-> T.ptr bn_callingconvention   @-> returning (T.void ))
  let bnregister_platform_cdecl_calling_convention = F.foreign  "BNRegisterPlatformCdeclCallingConvention" (T.ptr bn_platform   @-> T.ptr bn_callingconvention   @-> returning (T.void ))
  let bnregister_platform_stdcall_calling_convention = F.foreign  "BNRegisterPlatformStdcallCallingConvention" (T.ptr bn_platform   @-> T.ptr bn_callingconvention   @-> returning (T.void ))
  let bnregister_platform_fastcall_calling_convention = F.foreign  "BNRegisterPlatformFastcallCallingConvention" (T.ptr bn_platform   @-> T.ptr bn_callingconvention   @-> returning (T.void ))
  let bnset_platform_system_call_convention = F.foreign  "BNSetPlatformSystemCallConvention" (T.ptr bn_platform   @-> T.ptr bn_callingconvention   @-> returning (T.void ))
  let bnget_architecture_standalone_platform = F.foreign  "BNGetArchitectureStandalonePlatform" (T.ptr bn_architecture   @-> returning (T.ptr bn_platform  ))
  let bnget_related_platform = F.foreign  "BNGetRelatedPlatform" (T.ptr bn_platform   @-> T.ptr bn_architecture   @-> returning (T.ptr bn_platform  ))
  let bnadd_related_platform = F.foreign  "BNAddRelatedPlatform" (T.ptr bn_platform   @-> T.ptr bn_architecture   @-> T.ptr bn_platform   @-> returning (T.void ))
  let bnget_associated_platform_by_address = F.foreign  "BNGetAssociatedPlatformByAddress" (T.ptr bn_platform   @-> T.ptr T.uint64_t   @-> returning (T.ptr bn_platform))
  let bndemangle_ms = F.foreign  "BNDemangleMS"
      (T.ptr bn_architecture @-> T.string @-> T.ptr (T.ptr bn_type) @-> T.ptr (T.ptr (T.string)) @-> T.ptr T.size_t @-> returning (T.bool ))
  let bnregister_scripting_provider = F.foreign  "BNRegisterScriptingProvider" (T.string   @-> T.ptr E.bnscripting_provider_callbacks   @-> returning (T.ptr E.bn_scripting_provider  ))
  let bnget_scripting_provider_list = F.foreign  "BNGetScriptingProviderList" (T.ptr T.size_t   @-> returning (T.ptr (T.ptr E.bn_scripting_provider)))
  let bnfree_scripting_provider_list = F.foreign  "BNFreeScriptingProviderList" (T.ptr (T.ptr E.bn_scripting_provider)    @-> returning (T.void ))
  let bnget_scripting_provider_by_name = F.foreign  "BNGetScriptingProviderByName" (T.string   @-> returning (T.ptr E.bn_scripting_provider  ))
  let bnget_scripting_provider_name = F.foreign  "BNGetScriptingProviderName" (T.ptr E.bn_scripting_provider   @-> returning (T.string  ))
  let bncreate_scripting_provider_instance = F.foreign  "BNCreateScriptingProviderInstance" (T.ptr E.bn_scripting_provider   @-> returning (T.ptr E.bnscripting_instance  ))
  let bninit_scripting_instance = F.foreign  "BNInitScriptingInstance" (T.ptr E.bn_scripting_provider   @-> T.ptr E.bnscripting_instance_callbacks   @-> returning (T.ptr E.bnscripting_instance  ))
  let bnnew_scripting_instance_reference = F.foreign  "BNNewScriptingInstanceReference" (T.ptr E.bnscripting_instance   @-> returning (T.ptr E.bnscripting_instance  ))
  let bnfree_scripting_instance = F.foreign  "BNFreeScriptingInstance" (T.ptr E.bnscripting_instance   @-> returning (T.void ))
  let bnnotify_output_for_scripting_instance = F.foreign  "BNNotifyOutputForScriptingInstance" (T.ptr E.bnscripting_instance   @-> T.string   @-> returning (T.void ))
  let bnnotify_error_for_scripting_instance = F.foreign  "BNNotifyErrorForScriptingInstance" (T.ptr E.bnscripting_instance   @-> T.string   @-> returning (T.void ))
  let bnnotify_input_ready_state_for_scripting_instance = F.foreign  "BNNotifyInputReadyStateForScriptingInstance" (T.ptr E.bnscripting_instance   @-> E.bnscriptingproviderinputreadystate  @-> returning (T.void ))
  let bnregister_scripting_instance_output_listener = F.foreign  "BNRegisterScriptingInstanceOutputListener" (T.ptr E.bnscripting_instance   @-> T.ptr E.bnscripting_output_listener   @-> returning (T.void ))
  let bnunregister_scripting_instance_output_listener = F.foreign  "BNUnregisterScriptingInstanceOutputListener" (T.ptr E.bnscripting_instance   @-> T.ptr E.bnscripting_output_listener   @-> returning (T.void ))
  let bnget_scripting_instance_input_ready_state = F.foreign  "BNGetScriptingInstanceInputReadyState" (T.ptr E.bnscripting_instance   @-> returning ( E.bnscriptingproviderinputreadystate ))
  let bnset_scripting_instance_current_binary_view = F.foreign  "BNSetScriptingInstanceCurrentBinaryView" (T.ptr E.bnscripting_instance   @-> T.ptr bn_binary_view   @-> returning (T.void ))
  let bnset_scripting_instance_current_function = F.foreign  "BNSetScriptingInstanceCurrentFunction" (T.ptr E.bnscripting_instance   @-> T.ptr bn_function   @-> returning (T.void ))
  let bnset_scripting_instance_current_basic_block = F.foreign  "BNSetScriptingInstanceCurrentBasicBlock" (T.ptr E.bnscripting_instance   @-> T.ptr bn_basicblock   @-> returning (T.void ))
  let bnset_scripting_instance_current_address = F.foreign  "BNSetScriptingInstanceCurrentAddress" (T.ptr E.bnscripting_instance   @->T.uint64_t  @-> returning (T.void ))
  let bnset_scripting_instance_current_selection = F.foreign  "BNSetScriptingInstanceCurrentSelection" (T.ptr E.bnscripting_instance   @->T.uint64_t  @->T.uint64_t  @-> returning (T.void ))
  let bnregister_main_thread = F.foreign  "BNRegisterMainThread" (T.ptr E.bnmain_thread_callbacks   @-> returning (T.void ))
  let bnnew_main_thread_action_reference = F.foreign  "BNNewMainThreadActionReference" (T.ptr E.bnmain_thread_action   @-> returning (T.ptr E.bnmain_thread_action  ))
  let bnfree_main_thread_action = F.foreign  "BNFreeMainThreadAction" (T.ptr E.bnmain_thread_action   @-> returning (T.void ))
  let bnexecute_main_thread_action = F.foreign  "BNExecuteMainThreadAction" (T.ptr E.bnmain_thread_action   @-> returning (T.void ))
  let bnis_main_thread_action_done = F.foreign  "BNIsMainThreadActionDone" (T.ptr bnmain_thread_action @-> returning (T.bool ))
  let bnwait_for_main_thread_action = F.foreign  "BNWaitForMainThreadAction" (T.ptr E.bnmain_thread_action   @-> returning (T.void ))
  let bnexecute_on_main_thread = F.foreign  "BNExecuteOnMainThread" (T.ptr T.void   @-> T.static_funptr T.(T.ptr T.void @-> returning T.void) @-> returning (T.ptr E.bnmain_thread_action  ))
  let bnexecute_on_main_thread_and_wait = F.foreign  "BNExecuteOnMainThreadAndWait" (T.ptr T.void   @-> T.static_funptr T.(T.ptr T.void @-> returning T.void) @-> returning (T.void))
  let bnworker_enqueue = F.foreign  "BNWorkerEnqueue" (T.ptr T.void   @-> T.static_funptr T.(T.ptr T.void @-> returning T.void)  @-> returning (T.void ))
  let bnworker_priority_enqueue = F.foreign  "BNWorkerPriorityEnqueue" (T.ptr T.void   @->T.static_funptr T.(T.ptr T.void @-> returning T.void)@-> returning (T.void ))
  let bnworker_interactive_enqueue = F.foreign  "BNWorkerInteractiveEnqueue" (T.ptr T.void   @->  T.static_funptr T.(T.ptr T.void @-> returning T.void)@-> returning (T.void ))
  let bnget_worker_thread_count = F.foreign  "BNGetWorkerThreadCount" (T.void @-> returning (T.size_t ))
  let bnset_worker_thread_count = F.foreign  "BNSetWorkerThreadCount" (T.size_t  @-> returning (T.void ))
  let bnbegin_background_task = F.foreign  "BNBeginBackgroundTask" (T.string   @-> bool  @-> returning (T.ptr E.bnbackground_task  ))
  let bnfinish_background_task = F.foreign  "BNFinishBackgroundTask" (T.ptr E.bnbackground_task   @-> returning (T.void ))
  let bnset_background_task_progress_text = F.foreign  "BNSetBackgroundTaskProgressText" (T.ptr E.bnbackground_task   @-> T.string   @-> returning (T.void ))
  let bnis_background_task_cancelled = F.foreign  "BNIsBackgroundTaskCancelled" (T.ptr bnbackground_task @-> returning (T.bool))
  let bnget_running_background_tasks = F.foreign  "BNGetRunningBackgroundTasks" (T.ptr T.size_t   @-> returning (T.ptr (T.ptr E.bnbackground_task )  ))
  let bnnew_background_task_reference = F.foreign  "BNNewBackgroundTaskReference" (T.ptr E.bnbackground_task   @-> returning (T.ptr E.bnbackground_task  ))
  let bnfree_background_task = F.foreign  "BNFreeBackgroundTask" (T.ptr E.bnbackground_task   @-> returning (T.void ))
  let bnfree_background_task_list = F.foreign  "BNFreeBackgroundTaskList" (T.ptr (T.ptr E.bnbackground_task) @-> T.int  @-> returning (T.void ))
  let bnget_background_task_progress_text = F.foreign  "BNGetBackgroundTaskProgressText" (T.ptr E.bnbackground_task   @-> returning (T.string  ))
  let bncan_cancel_background_task = F.foreign  "BNCanCancelBackgroundTask" (T.ptr bnbackground_task @-> returning (T.bool ))
  let bncancel_background_task = F.foreign  "BNCancelBackgroundTask" (T.ptr E.bnbackground_task   @-> returning (T.void ))
  let bnis_background_task_finished = F.foreign  "BNIsBackgroundTaskFinished" (T.ptr bnbackground_task @-> returning (T.bool ))
  (* let bnregister_interaction_handler = F.foreign  "BNRegisterInteractionHandler" (T.ptr E.bninteraction_handler_callbacks   @-> returning (T.void )) *)
  (* (\* let bnmarkdown_to_html = F.foreign  "BNMarkdownToHTML" (T.string   @-> returning (T.string  )) *\) *)
  (* (\* let bnshow_plain_text_report = F.foreign  "BNShowPlainTextReport" (T.ptr bn_binary_view   @-> T.string   @-> T.string   @-> returning (T.void )) *\) *)
  (* (\* let bnshow_markdown_report = F.foreign  "BNShowMarkdownReport" (T.ptr bn_binary_view   @-> T.string   @-> T.string   @-> T.string   @-> returning (T.void )) *\) *)
  (* (\* let bnshow_htmlreport = F.foreign  "BNShowHTMLReport" (T.ptr bn_binary_view   @-> T.string   @-> T.string   @-> T.string   @-> returning (T.void )) *\) *)
  (* (\* let bnget_text_line_input = F.foreign  "BNGetTextLineInput" (returning (T.int )) *\) *)
  (* (\* let bnget_integer_input = F.foreign  "BNGetIntegerInput" (returning (T.int )) *\) *)
  (* (\* let bnget_address_input = F.foreign  "BNGetAddressInput" (returning (T.int )) *\) *)
  (* (\* let bnget_choice_input = F.foreign  "BNGetChoiceInput" (returning (T.int )) *\) *)
  (* (\* let bnget_open_file_name_input = F.foreign  "BNGetOpenFileNameInput" (returning (T.int )) *\) *)
  (* (\* let bnget_save_file_name_input = F.foreign  "BNGetSaveFileNameInput" (returning (T.int )) *\) *)
  (* (\* let bnget_directory_name_input = F.foreign  "BNGetDirectoryNameInput" (returning (T.int )) *\) *)
  (* (\* let bnget_form_input = F.foreign  "BNGetFormInput" (returning (T.int )) *\) *)
  (* (\* let bnfree_form_input_results = F.foreign  "BNFreeFormInputResults" (T.ptr E.bnform_input_field   @-> T.int  @-> returning (T.void )) *\) *)
  (* (\* let bnshow_message_box = F.foreign  "BNShowMessageBox" (T.string   @-> T.string   @-> enum E.bnmessage_box_button_set  @-> enum E.bnmessage_box_icon  @-> returning (enum E.bnmessage_box_button_result )) *\) *)
  (* (\* let bndemangle_gnu3 = F.foreign  "BNDemangleGNU3" (returning (T.int )) *\) *)
  (* (\* let bnfree_demangled_name = F.foreign  "BNFreeDemangledName" (T.ptr T.ptr T.string     @-> T.int  @-> returning (T.void )) *\) *)






end
