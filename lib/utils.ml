open Ctypes

(* Convert pointer with possible null value into option type *)
let optionify_ptr typ obj = Ffi_generated_types.coerce (ptr typ) (ptr_opt typ) obj


let get_list_of_things obj getfunc freefunc newreferencefunc =
  let i = allocate size_t (Unsigned.Size_t.of_int 0) in
  let lst = getfunc obj i in
  let sz = Unsigned.Size_t.to_int !@i in
  let rec loop acc i =
    match i with
    | _ when i=sz -> acc
    | _ as n ->
      let cpy = newreferencefunc (!@(lst +@ n)) in
      loop (cpy :: acc) (n+1)
  in
  let res = List.rev (loop [] 0) in
  freefunc lst !@i;
  res


let uint64_to_sizet i =
  Unsigned.UInt64.to_int64 i |> Unsigned.Size_t.of_int64


let uint64_to_uint32 i =
  Unsigned.UInt64.to_int64 i |> Unsigned.UInt32.of_int64
