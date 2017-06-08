open Ctypes
open Foreign

module B = Ffi_bindings.Bindings(Ffi_generated_types)(Ffi_generated)
open Ffi_bindings
open B

type bn_functiongraph = Ffi_bindings.bn_functiongraph Ctypes.structure Ctypes_static.ptr

type bn_functiongraphblock = Ffi_bindings.bn_functiongraphblock Ctypes.structure Ctypes_static.ptr

type bn_function_graph_type =  Ffi_bindings.bn_function_graph_type = 
  | BN_NormalFunctionGraph 
  | BN_LowLevelILFunctionGraph 
  | BN_LiftedILFunctionGraph


type bn_function_graph_option =  Ffi_bindings.bn_function_graph_option = 
  | BN_ShowAddress 
  | BN_ShowBasicBlockRegisterState 
  | BN_ShowFlagUsage

let create_function_graph f =
  B.bn_create_function_graph f 

let get_function g =
  B.bn_get_function_for_function_graph g

let get_graph_blocks f =
  let i = allocate size_t (Unsigned.Size_t.of_int 0) in
  let lst = B.bn_get_function_graph_blocks f i in
  let sz = Unsigned.Size_t.to_int !@i in
  let rec loop acc i =
    match i with
    | _ when i=sz -> acc
    | _ as n ->
      let block = !@(lst +@ n) in
      loop (block :: acc) (n+1)
  in
  loop [] 0




