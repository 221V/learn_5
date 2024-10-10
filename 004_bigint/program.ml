

(* todo v2 with bigint - zarith
Printf.printf "Enter your number:\n";;

let b = Big_int_Z.big_int_of_string 3

Big_int_Z.string_of_big_int

https://github.com/ocaml/Zarith/blob/master/tests/bi.ml
*)


(* v1 -- this version fails on bigint -- Fatal error: exception Failure("int_of_string") *)

Printf.printf "Enter your number:\n";;

let n : int ref = ref (int_of_string @@ read_line()) in
  Printf.printf "n = %d\n" !n;
  
  n := !n + 1;
  Printf.printf "n + 1 = %d\n" !n;
  
  n := !n * !n;
  Printf.printf "(n + 1) ^ 2 = %d\n" !n;


