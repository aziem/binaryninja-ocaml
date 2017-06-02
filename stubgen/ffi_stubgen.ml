module B = Ffi_bindings.Bindings(Ffi_generated_types)

let _ =
  let prefix = "binaryninja_stub" in
  let generate_ml, generate_c = ref false, ref false in
  Arg.(parse [ ("-ml", Set generate_ml, "Generate ML");
                ("-c", Set generate_c, "Generate C") ])
    (fun _ -> failwith "unexpected anonymous argument")
    "stubgen [-ml|-c]";
  match !generate_ml, !generate_c with
  | false, false
  | true, true ->
    failwith "Exactly one of -ml and -c must be specified"
  | true, false ->
    Cstubs.write_ml Format.std_formatter ~prefix (module B)
  | false, true ->
    print_endline ("#include " ^  Config.binaryninja_header_loc);
    (* Ugly hack - we use g++ to compile the bindings hence no _Bool type. 
       Typedef it to int to make the stubs compile with g++
    *)
    print_endline ("typedef int _Bool;"); 
    print_endline("extern \"C\" {");
     Cstubs.write_c Format.std_formatter ~prefix (module B); 
    print_endline("}")
