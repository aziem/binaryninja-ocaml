open Binaryninja

let write_breakpoint bn_view start length =
  let module B = Binaryninja in
  let int3s = String.make (Unsigned.UInt64.to_int length) '\xcc' in
  ignore (B.bn_write_view_data bn_view start int3s (Unsigned.Size_t.of_int (Unsigned.UInt64.to_int length)))

let is_valid = fun _ _ _ -> true

let core_plugin_init () =
  Binaryninja.bn_register_plugin_command_for_range
    "Convert to breakpoint (OCaml version)"
    "Fill region with breakpoint instructions"
    write_breakpoint
    is_valid;
  true

