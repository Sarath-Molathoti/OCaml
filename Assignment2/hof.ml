(*Higher-order functions*)
(* In OCaml you can pass functions as arguments,
and return functions as results*)

(*functions as arguments*)
let plus_three x = x + 3;;
let twice f z = f (f z);;
(*twice plus_three 5;;*)

(*functions as results*)
let plus_four x = x + 4;;
let pick_fn n =
if n > 0 then plus_three else plus_four;;
(*(pick_fn 5);;*)

