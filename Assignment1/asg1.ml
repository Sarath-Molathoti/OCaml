let rec search l e =
    match l with
	| [] -> false
	| h :: t -> if h = e 
                  then true
		  else search t e
;;
let rec union l1 l2 = 
    match l1 with
    | [] -> l2
    | h :: t -> if search l2 h then union t l2 else union t (h::l2) ;;
let rec intersection l1 l2 = 
    match l1 with
    | [] -> []
    | h :: t -> if search l2 h then h::(intersection t l2) else intersection t l2 ;;
