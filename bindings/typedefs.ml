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

  | BNStackVariableTypeToken
  | BNDataVariableTypeToken
  | BNFunctionReturnTypeToken
  | BNFunctionAttributeToken
  | BNArgumentTypeToken
  | BNArgumentNameToken
  | BNHexDumpByteValueToken
  | BNHexDumpSkippedByteToken
  | BNHexDumpInvalidByteToken
  | BNOpcodeToken
  | BNStringToken
  | BNCharacterConstantToken

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

