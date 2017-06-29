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


let get_list () =
  let i = allocate size_t (Unsigned.Size_t.of_int 0) in
  let lst = B.bnget_platform_list i in
  let sz = Unsigned.Size_t.to_int !@i in
  let rec loop acc cnt =
    match cnt with
    | _ when cnt=sz -> acc
    | _ as n ->
      let plat = !@(lst +@ n) in
      loop (plat :: acc) (n+1)
  in
  let res = loop [] 0 in
  B.bnfree_platform_list lst !@i;
  res

let get_default_calling_convention plat =
   B.bnget_platform_default_calling_convention plat |>
   Utils.optionify_ptr B.E.bn_callingconvention 

let get_cdecl_calling_convention plat =
   B.bnget_platform_cdecl_calling_convention plat |>
   Utils.optionify_ptr B.E.bn_callingconvention 

let get_stdcall_calling_convention plat =
  B.bnget_platform_stdcall_calling_convention plat |>
  Utils.optionify_ptr B.E.bn_callingconvention 

let get_fastcall_calling_convention plat =
  B.bnget_platform_fastcall_calling_convention plat |>
  Utils.optionify_ptr B.E.bn_callingconvention 

let get_systemcall_calling_convention plat =
  B.bnget_platform_system_call_convention plat |>
  Utils.optionify_ptr B.E.bn_callingconvention 

let get_calling_conventions plat =
  Utils.get_list_of_things plat B.bnget_platform_calling_conventions B.bnfree_calling_convention_list B.bnnew_calling_convention_reference
