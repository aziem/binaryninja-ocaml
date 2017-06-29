open Binaryninja

let write_breakpoint bn_view start length =
  let module B = Binaryninja in
  let int3s = String.make (Unsigned.UInt64.to_int length) '\xcc' in
  ignore (B.bn_write_view_data bn_view start int3s (Unsigned.Size_t.of_int (Unsigned.UInt64.to_int length)))

let is_valid = fun _ _ _ -> true


module BreakPointPlugin : Plugin.BinaryNinjaPlugin =
struct
  let name = "Convert to breakpoint (OCaml version)"
  let descr = "Fill region with breakpoint instructions"
  let action = Plugin.ActionForRange(write_breakpoint)
  let is_valid = Plugin.IsValidForRange(is_valid)
  
end

module G = Plugin.GeneratePlugin(BreakPointPlugin)

let _ =
  G.write_c ()



