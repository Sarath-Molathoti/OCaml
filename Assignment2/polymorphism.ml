(*polymorphism is achieved by giving different implementations for different cases*)
let rec length = function
| [] -> 0
| _ :: tail -> 1 + length tail;;

(*length [1;2;3];;*)
(*length ["ad";"a";"b";"aaa"];;*)




(*the identity is polymorphic*)
let id x = x;;


