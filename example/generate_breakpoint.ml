open Binaryninja

module BreakPointPlugin : Binaryninja.BinjaPluginReg =
struct
  let core_plugin_init = Breakpoint.core_plugin_init 
end

module G = Binaryninja.GeneratePlugin(BreakPointPlugin)

let _ =
  G.write_c ()


