
type bn_file_metadata
type bn_binary_view
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

module Plugin :
sig

  type action_for_range = bn_binary_view -> Unsigned.uint64 -> Unsigned.uint64 -> unit

  type is_valid_for_range = bn_binary_view -> Unsigned.uint64 -> Unsigned.uint64 -> bool

  val bn_register_plugin_command_for_range : string -> string -> action_for_range -> is_valid_for_range -> unit

  module type BinjaPluginForRange =
  sig
    val name : string
    val descr : string
    val action : bn_binary_view -> Unsigned.uint64 -> Unsigned.uint64 -> unit          
    val is_valid : bn_binary_view -> Unsigned.uint64 -> Unsigned.uint64 -> bool          
  end
  
  module GeneratePluginForRange ( B : BinjaPluginForRange) :
  sig
    val write_c : unit -> unit
    val core_plugin_init : unit -> bool
  end

end


val get_build_id : unit -> int 

val init_core_plugins : unit -> unit

val init_user_plugins : unit -> unit


(* val create_file_metadata : unit -> Ffi_bindings.bn_file_metadata structure ptr *)
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


