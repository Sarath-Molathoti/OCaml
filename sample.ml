let rec find l e =
match l with 
	| [] -> false
	| h::t -> if e=h then true else find (List.tl l) e;;
