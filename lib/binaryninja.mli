
type bn_file_metadata
type bn_platform
type bn_architecture


type analysis_state = 
  | IdleState
  | DisassembleState
  | AnalyzeState

module Log :
sig

  type loglevel = 
    | BN_DebugLog
    | BN_InfoLog
    | BN_WarningLog
    | BN_ErrorLog
    | BN_AlertLog

  val log : loglevel -> string -> unit

  val log_debug : string -> unit

  val log_info : string -> unit

  val log_warning : string -> unit

  val log_error : string -> unit

  val log_alert : string -> unit

end



module Platform :
sig
  type bn_platform

  val create_platform : bn_architecture -> string -> bn_platform
  val get_platform_name : bn_platform -> string
  val get_architecture : bn_platform -> bn_architecture
  val get_platform_list : unit -> bn_platform list
  val get_platform_list_by_arch : bn_architecture -> bn_platform list
  val get_platform_list_by_os : string -> bn_platform list
  val get_platform_list_by_os_and_arch : string -> bn_architecture -> bn_platform list
  val get_platform_by_name : string -> bn_platform option
end

module rec BinaryView :
sig
  type bn_binary_view
  val is_modified : bn_binary_view -> bool
  val functions : bn_binary_view -> Function.bn_function list 
end
and Function :
sig
  type bn_function
  val get_platform : bn_function -> bn_platform
  val get_architecture : bn_function -> bn_architecture
  val get_start : bn_function -> Unsigned.uint64
  val get_symbol : bn_function -> Symbol.bn_symbol
  val get_name : bn_function -> string 
  val get_full_name : bn_function -> string
  val get_short_name : bn_function -> string
  val was_function_auto_discovered : bn_function -> bool
  val can_function_return : bn_function -> bool
  val get_basic_blocks : bn_function -> BasicBlock.bn_basicblock list
end
and BasicBlock :
sig
  type bn_basicblock
  type bn_basicblock_edge 
  val get_function : bn_basicblock -> Function.bn_function
  val get_architecture : bn_basicblock -> bn_architecture
  val get_start : bn_basicblock -> Unsigned.uint64
  val get_end : bn_basicblock -> Unsigned.uint64
  val get_length : bn_basicblock -> Unsigned.uint64
  val get_outgoing_edges : bn_basicblock -> bn_basicblock_edge list
  val has_undetermined_outgoing_edges : bn_basicblock -> bool
  val mark_recently_used : bn_basicblock -> unit
  val get_instructions : bn_basicblock -> Lowlevelil.bn_low_level_il_instruction list
end
and Lowlevelil :
sig
  type bn_low_level_il_instruction 

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

  module Function : sig
    
    type bn_lowlevelil_function 

    val get_current_address : bn_lowlevelil_function -> Unsigned.uint64

    val set_current_address : bn_lowlevelil_function -> Unsigned.uint64 -> unit

    val get_index_for_instruction : bn_lowlevelil_function -> Unsigned.size_t -> Unsigned.size_t

    val get_instruction_count : bn_lowlevelil_function -> int

    val get_lowlevelil_by_index : bn_lowlevelil_function -> Unsigned.size_t -> bn_low_level_il_instruction

    val get_instructions : bn_lowlevelil_function -> bn_low_level_il_instruction list
  end


end
and Symbol :
sig
  type bn_symbol

  type bn_symbol_type =
    | BN_FunctionSymbol 
    | BN_ImportAddressSymbol 
    | BN_ImportedFunctionSymbol 
    | BN_DataSymbol 
    | BN_ImportedDataSymbol

  val get_type : bn_symbol -> bn_symbol_type
  val get_short_name : bn_symbol -> string
  val get_full_name : bn_symbol -> string
  val get_raw_name : bn_symbol -> string
  val get_address : bn_symbol -> Unsigned.uint64
  val is_auto_defined : bn_symbol -> bool
  val set_auto_defined : bn_symbol -> bool -> unit
  val get_symbol_by_address : BinaryView.bn_binary_view -> Unsigned.uint64 -> bn_symbol
  val get_symbol_by_raw_name : BinaryView.bn_binary_view -> string -> bn_symbol 

end



 



module FunctionGraph :
sig
  type bn_functiongraph
  type bn_functiongraphblock 

  type bn_function_graph_type = 
    | BN_NormalFunctionGraph 
    | BN_LowLevelILFunctionGraph 
    | BN_LiftedILFunctionGraph

  val create_function_graph : Function.bn_function -> bn_functiongraph

  val get_function : bn_functiongraph -> Function.bn_function

  val get_graph_blocks : bn_functiongraph -> bn_functiongraphblock list 

end

module Plugin :
sig

  type action =
    | ActionForCommand of (BinaryView.bn_binary_view -> unit)
    | ActionForRange of (BinaryView.bn_binary_view -> Unsigned.uint64 -> Unsigned.uint64 -> unit)
    | ActionForAddress of (BinaryView.bn_binary_view -> Unsigned.uint64 -> unit)
    | ActionForFunction of (BinaryView.bn_binary_view -> Function.bn_function -> unit)

  type is_valid =
    | IsValidForCommand of (BinaryView.bn_binary_view -> bool)
    | IsValidForRange of  (BinaryView.bn_binary_view -> Unsigned.uint64 -> Unsigned.uint64 -> bool)
    | IsValidForAddress of (BinaryView.bn_binary_view -> Unsigned.uint64 -> bool)
    | IsValidForFunction of (BinaryView.bn_binary_view -> Function.bn_function -> bool)


  module type BinaryNinjaPlugin =
  sig
    val name : string
    val descr : string
    val action : action
    val is_valid : is_valid
  end

  module  GeneratePlugin(B:BinaryNinjaPlugin) :
  sig
    val core_plugin_init : unit -> unit
    val write_c : unit -> unit
  end

end




val get_build_id : unit -> int 

val init_core_plugins : unit -> unit

val init_user_plugins : unit -> unit

val create_file_metadata : unit -> bn_file_metadata

val create_binary_dataview_from_filename : bn_file_metadata -> string -> BinaryView.bn_binary_view

val update_analysis : BinaryView.bn_binary_view -> unit

val get_default_platform : BinaryView.bn_binary_view -> bn_platform

val get_default_architecture : BinaryView.bn_binary_view -> bn_architecture

val get_default_architecture_name : bn_architecture -> string

val get_platform_name : bn_platform -> string

val get_analysis_progress : BinaryView.bn_binary_view -> analysis_state

val bn_get_scripting_provider_list : unit -> unit

val bn_write_view_data : BinaryView.bn_binary_view -> Unsigned.uint64 -> string -> Unsigned.size_t -> Unsigned.size_t


