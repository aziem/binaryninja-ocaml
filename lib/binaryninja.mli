
type bn_file_metadata
type bn_binary_view
type bn_platform
type bn_architecture
type bn_basicblock


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

module Symbol :
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
  val get_symbol_by_address : bn_binary_view -> Unsigned.uint64 -> bn_symbol
  val get_symbol_by_raw_name : bn_binary_view -> string -> bn_symbol 
  
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


module Function :
sig
  type bn_function
  val get_platform : bn_function -> bn_platform
  val get_architecture : bn_function -> bn_architecture
  val get_start : bn_function -> Unsigned.uint64
  val get_symbol : bn_function -> Symbol.bn_symbol
  val was_function_auto_discovered : bn_function -> bool
  val can_function_return : bn_function -> bool
  val get_basic_blocks : bn_function -> bn_basicblock list
end



module Plugin :
sig

  type action =
    | ActionForCommand of (bn_binary_view -> unit)
    | ActionForRange of (bn_binary_view -> Unsigned.uint64 -> Unsigned.uint64 -> unit)
    | ActionForAddress of (bn_binary_view -> Unsigned.uint64 -> unit)
    | ActionForFunction of (bn_binary_view -> Function.bn_function -> unit)

  type is_valid =
    | IsValidForCommand of (bn_binary_view -> bool)
    | IsValidForRange of  (bn_binary_view -> Unsigned.uint64 -> Unsigned.uint64 -> bool)
    | IsValidForAddress of (bn_binary_view -> Unsigned.uint64 -> bool)
    | IsValidForFunction of (bn_binary_view -> Function.bn_function -> bool)


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

val create_binary_dataview_from_filename : bn_file_metadata -> string -> bn_binary_view

val update_analysis : bn_binary_view -> unit

val get_default_platform : bn_binary_view -> bn_platform

val get_default_architecture : bn_binary_view -> bn_architecture

val get_default_architecture_name : bn_architecture -> string

val get_platform_name : bn_platform -> string

val get_analysis_progress : bn_binary_view -> analysis_state

val bn_get_scripting_provider_list : unit -> unit

val bn_write_view_data : bn_binary_view -> Unsigned.uint64 -> string -> Unsigned.size_t -> Unsigned.size_t


