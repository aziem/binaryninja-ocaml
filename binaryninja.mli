
type bn_file_metadata
type bn_binary_view
type bn_platform
type bn_architecture


type action_for_range = bn_binary_view -> Unsigned.uint64 -> Unsigned.uint64 -> unit

type is_valid_for_range = bn_binary_view -> Unsigned.uint64 -> Unsigned.uint64 -> bool

type analysis_state = 
  | IdleState
  | DisassembleState
  | AnalyzeState



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

val bn_register_plugin_command_for_range : string -> string -> action_for_range -> is_valid_for_range -> unit 

val bn_write_view_data : bn_binary_view -> Unsigned.uint64 -> string -> Unsigned.size_t -> Unsigned.size_t


module type BinjaPluginReg =
sig
  val core_plugin_init : unit -> bool
end


module GeneratePlugin ( B : BinjaPluginReg) :
sig
  val write_c : unit -> unit
end
