let c=0;;
let r = let rec find l e =
match l with 
	| [] -> 0
	| h::t -> if e=h then 1 else find (List.tl l) e
in 
if r=0 then yes else no;;
		    
