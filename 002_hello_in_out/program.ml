
(* let got_int : int = 0 *)

let maybe_valid_number (n : int) : unit =
    if n > 0 && n < 6
    then
      let doubled_int = n * 2 in
      Printf.printf "%d * 2 = %d\n" n doubled_int
    else
      print_endline "Invalid number value!"

let () = Printf.printf "%s\n" "Please type number from 1 to 5 and press enter:"
(* let got_int : int = *)
let () =
  try
    let got_int : int = int_of_string @@ read_line() in
    maybe_valid_number got_int;
  with
(*  | End_of_file ->
    maybe_valid_number got_int;
    | _ -> *)
    _ ->
      print_string "Invalid number value!"
  
  (* print_endline "Hello, World!" *)
  (* print_string "Hello, World!" *)
  (*
  let v = "Hello, World!"
  Printf.printf "%s\n" v
  *)
