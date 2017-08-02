open Ctypes
open Foreign

module B = Ffi_bindings.Bindings(Ffi_generated_types)(Ffi_generated)
module U = Utils
open Ffi_bindings
open B

type bn_function = Typedefs.bn_function Ctypes.structure Ctypes_static.ptr
 
let get_platform f =
  B.bn_get_function_platform f
    
let get_architecture f =
  B.bn_get_function_architecture f

let get_start f =
  B.bn_get_function_start f

let get_symbol f =
  B.bn_get_function_symbol f

let get_name f =
  get_symbol f |> Symbol.get_raw_name

let get_full_name f =
  get_symbol f |> Symbol.get_full_name

let get_short_name f =
  get_symbol f |> Symbol.get_short_name

let was_function_auto_discovered f =
  B.bn_was_function_automatically_discovered f

let can_function_return f =
  B.bn_can_function_return f

let has_explicitly_defined_type f =
  B.bnfunction_has_explicitly_defined_type f

let needs_update f =
  B.bnis_function_update_needed f 

let get_basic_blocks (f:bn_function) = 
  let i = allocate size_t (Unsigned.Size_t.of_int 0) in
  let lst = B.bn_get_function_basic_block_list f i in
  let sz = (Unsigned.Size_t.to_int !@i) in
  let rec loop acc i =
    match i with
    | _ when i=sz -> acc
    | _ as n ->
      let block = !@(lst +@ n) in
      loop (block :: acc) (n+1)
  in
  List.rev (loop [] 0)

let get_basic_block_at_addr f arch addr =
  B.bnget_function_basic_block_at_address f arch addr |> U.optionify_ptr B.E.bn_basicblock

let mark_recently_used f =
  B.bnmark_function_as_recently_used f

(* let get_function_lowlevelil f = *)
(*   B.bnget_function_low_level_il f *)

(* let get_function_lowlevelil f = *)
(*   Lowlevelil.LowFunction.get_function_lowlevel f *)

let get_lowlevelil_for_instruction f arch addr =
  B.bnget_low_level_ilfor_instruction f arch addr

(* let get_stack_var_referenced_by_instr f addr = *)
(*   let arch = get_architecture f in *)
(*   let create_stackvar_ref r = *)
(*     let ref = make B.E.bnstack_variable_reference in *)
(*     setf ref B.E.bnstack_variable_sourceoperand (getf r B.E.bnstack_variable_sourceoperand); *)
(*     setf ref B.E.bnstack_variable_name (getf r B.E.bnstack_variable_name); *)
(*     setf ref B.E.bnstack_variable_startingoffset (getf r B.E.bnstack_variable_startingoffset); *)
(*     setf ref B.E.bnstack_variable_referencedoffset (getf r B.E.bnstack_variable_referencedoffset); *)
(*     ref *)
(*   in *)
(*   Utils.get_list_of_things *)
(*     f *)
(*     (fun func i -> B.bnget_stack_variables_referenced_by_instruction func arch addr i) *)
(*     bnfree_stack_variable_reference_list *)
(*     create_stackvar_ref *)
   
