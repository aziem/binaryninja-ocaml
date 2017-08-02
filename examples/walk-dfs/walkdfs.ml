open Binaryninja


let rec walk block =
  let open Lowlevelil in
  let instructions = BasicBlock.get_instructions block in
  List.iter
    (fun instr ->
       match Instruction.get_operation instr with
       | BN_LLIL_IF ->
         Log.log_info (Printf.sprintf "Found a branching instruction\n");
         let edges = BasicBlock.get_outgoing_edges block in
         List.iter (fun e ->
             let target_inst = BasicBlock.BasicBlockEdge.get_target e in
             match target_inst with
             | None -> ()
             | Some block -> walk block
           ) edges
       | BN_LLIL_CALL -> Log.log_info (Printf.sprintf "Found calling instruction\n")
       | _ -> 
         begin
           (* NOTE: get text does not work right now *)
           (* match Instruction.get_text instr with *)
           (* | None -> () *)
           (* | Some s -> Log.log_info (Printf.sprintf "Found instruction: %s\n" s) *)
           Printf.sprintf "Found an instruction\n" |> Log.log_info
         end

    ) instructions 



let start_walking bn_view func =
  walk (List.hd (Function.get_basic_blocks func))

let is_valid = fun _ _ -> true


module WalkDFSPlugin: Plugin.BinaryNinjaPlugin =
struct
  let name = "Walk DFS (OCaml version)"
  let descr = "DFS walk of function"
  let action = Plugin.ActionForFunction(start_walking)
  let is_valid = Plugin.IsValidForFunction(is_valid)
  
end

module G = Plugin.GeneratePlugin(WalkDFSPlugin)

let _ =
  G.write_c ()



