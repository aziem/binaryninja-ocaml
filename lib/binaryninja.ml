open Ctypes
open Foreign


module B = Ffi_bindings.Bindings(Ffi_generated_types)(Ffi_generated)
open Ffi_bindings
open B


module Log = Log
module Symbol = Symbol 
module Platform = Platform
module Function = Function
module FunctionGraph = Functiongraph
module Plugin = Plugin

type bn_file_metadata = Typedefs.bn_file_metadata Ctypes.structure Ctypes_static.ptr
type bn_binary_view = Typedefs.bn_binary_view Ctypes.structure Ctypes_static.ptr
type bn_platform = Typedefs.bn_platform Ctypes.structure Ctypes_static.ptr
type bn_architecture = Typedefs.bn_architecture Ctypes.structure Ctypes_static.ptr
type bn_basicblock = Typedefs.bn_basicblock Ctypes.structure Ctypes_static.ptr

type analysis_state = Typedefs.bn_analysis_state =
  | IdleState
  | DisassembleState
  | AnalyzeState


let get_build_id () =
  B.bn_get_build_id () |> Unsigned.UInt32.to_int

let init_core_plugins () =
  B.bn_init_core_plugins ()

let init_user_plugins () =
  B.bn_init_user_plugins ()


let create_file_metadata = B.bn_create_file_metadata 

let create_binary_dataview_from_filename bnfilemetadata filename =
  B.bn_create_binary_dataview_from_filename bnfilemetadata filename

let update_analysis binary_view =
  B.bn_update_analysis binary_view

let get_default_platform binary_view =
  B.bn_get_default_platform binary_view

let get_default_architecture binary_view =
  B.bn_get_default_architecture binary_view

let get_default_architecture_name bn_arch =
  B.bn_get_architecture_name bn_arch

let get_platform_name platform =
  B.bn_get_platform_name platform 

let get_analysis_progress binary_view =
  let prog = B.bn_get_analysis_progress binary_view in
  let state = getf prog B.E.state in
  state

let bn_get_scripting_provider_list () =
  let i = allocate size_t (Unsigned.Size_t.of_int 3) in
  ignore(bn_get_scripting_provider_list i)

let bn_write_view_data bn_view offset data len =
  B.bn_write_view_data bn_view offset (coerce string (ptr void) data) len




