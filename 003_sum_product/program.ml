
Printf.printf "Sum numbers 1-100:\n";;

let () =
  (* Sum of numbers 1 to 100 *)
  let sum = ref 0 in
  for num = 1 to 100 do
    sum := !sum + num
  done;
  Printf.printf "%d\n" !sum;

  (* Product of numbers 1 to 15 *)
  let prod = ref 1L in
  Printf.printf "Product numbers 1-15:\n";
  for num2 = 1 to 15 do
    prod := Int64.mul !prod (Int64.of_int num2)
  done;
  Printf.printf "%Ld\n" !prod


(* v1 *)
(*
print_string "Sum numbers 1-100:\n";;

let sum2 : int =
let sum : int ref = ref 0 in
  for num = 1 to 100 do
    sum := !sum + num;
  done;
  !sum;;

Printf.printf "%d\n" sum2;;


print_string "Product numbers 1-15:\n";;

let prod2 : int =
let prod : int ref = ref 1 in
  for num2 = 1 to 15 do
    prod := !prod * num2;
  done;
  !prod;;

Printf.printf "%d\n" prod2;;
*)


(*
todo read about difference between ; and ;;

https://ocaml.org/docs/tour-of-ocaml
https://ocaml.org/manual/5.2/coreexamples.html
https://www.w3schools.io/languages/ocaml-tutorials/
https://learnxinyminutes.com/docs/ocaml/
https://www.brendanlong.com/ocaml-operator-cheatsheet.html
https://www2.lib.uchicago.edu/keith/ocaml-class/data.html
https://ocaml.org/docs/loops-recursion
https://ocaml.org/manual/5.2/index.html
https://cs3110.github.io/textbook/cover.html
https://dev.realworldocaml.org/
*)
