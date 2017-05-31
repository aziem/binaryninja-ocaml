open Binaryninja

let _ =
  let i = get_build_id () in
  Printf.printf "Build Id: %d\n" i
