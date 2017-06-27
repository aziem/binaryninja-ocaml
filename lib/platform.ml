open Ctypes



module B = Ffi_bindings.Bindings(Ffi_generated_types)(Ffi_generated)
type bn_platform = Typedefs.bn_platform Ctypes.structure Ctypes_static.ptr 


let create_platform arch name =
  B.bn_create_platform arch name

let get_platform_name platform =
  B.bn_get_platform_name platform 

let get_architecture platform =
  B.bn_get_platform_architecture platform

let get_platform_list () =
  let i = allocate size_t (Unsigned.Size_t.of_int 0) in
  let lst = B.bn_get_platform_list i in
  let sz = (Unsigned.Size_t.to_int !@i) in
  let rec loop acc i =
    match i with
    | _ when i=sz -> acc 
    | _ as n ->
      let plat = !@(lst +@ n) in
      loop ( plat :: acc) (n+1)
  in
  loop [] 0

let get_platform_list_by_arch bn_arch =
  let i = allocate size_t (Unsigned.Size_t.of_int 0) in
  let lst = B.bn_get_platform_list_by_architecture bn_arch i in
  let sz = (Unsigned.Size_t.to_int !@i) in
  let rec loop acc i =
    match i with
    | _ when i=sz -> acc 
    | _ as n ->
      let plat = !@(lst +@ n) in
      loop ( plat :: acc) (n+1)
  in
  loop [] 0

let get_platform_list_by_os os =
  let i = allocate size_t (Unsigned.Size_t.of_int 0) in
  let lst = B.bn_get_platform_list_by_os os i in
  let sz = (Unsigned.Size_t.to_int !@i) in
  let rec loop acc i =
    match i with
    | _ when i=sz -> acc 
    | _ as n ->
      let plat = !@(lst +@ n) in
      loop ( plat :: acc) (n+1)
  in
  loop [] 0

let get_platform_list_by_os_and_arch os arch =
  let i = allocate size_t (Unsigned.Size_t.of_int 0) in
  let lst = B.bn_get_platform_list_by_os_and_architecture os arch i in
  let sz = (Unsigned.Size_t.to_int !@i) in
  let rec loop acc i =
    match i with
    | _ when i=sz -> acc 
    | _ as n ->
      let plat = !@(lst +@ n) in
      loop ( plat :: acc) (n+1)
  in
  loop [] 0
    
let get_platform_by_name name =
  let res = B.bn_get_platform_by_name name in
  match (Ffi_generated_types.coerce (ptr (B.E.bn_platform)) (ptr_opt (B.E.bn_platform)) res) with
  | None -> None
  | Some plat -> Some plat 
