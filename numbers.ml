(* There are 2 built-in-type for numbers:"int" and "float". ocaml doesn't automatically convert types*)

print_int (3 + 4);;(*int*)
print_string "\n";;

print_float (2. +. 3.);;(*float*)
(* 1 + 1.0 is a compile error*)
(* the "+." is for adding floating point numbers *)
print_string "\n";;

print_int (2_22 + 1_2_3);;
(*number can have low line _ in them, for easy reading*)


