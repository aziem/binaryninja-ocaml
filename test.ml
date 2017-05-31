let print_build_id () = 
  Binaryninja.get_build_id () |> Printf.printf "BUILD ID: %d\n"

let _ = print_build_id ();
  
 
