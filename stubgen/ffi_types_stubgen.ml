let () =
	print_endline ("#include " ^  Config.binaryninja_header_loc);
        Cstubs.Types.write_c Format.std_formatter (module Ffi_bindings.Enums)
