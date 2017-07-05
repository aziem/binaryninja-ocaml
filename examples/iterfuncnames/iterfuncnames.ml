open Binaryninja

let write_breakpoint bn_view =
  let functions = BinaryView.functions bn_view in
  List.iter (fun f -> Log.log_info (Printf.sprintf "Function name: %s\n" (Function.get_name f))) functions

let is_valid = fun _ -> true


module IterFunctionsPlugin: Plugin.BinaryNinjaPlugin =
struct
  let name = "Iter Functions (OCaml version)"
  let descr = "Dump names of function"
  let action = Plugin.ActionForCommand(write_breakpoint)
  let is_valid = Plugin.IsValidForCommand(is_valid)
  
end

module G = Plugin.GeneratePlugin(IterFunctionsPlugin)

let _ =
  G.write_c ()



