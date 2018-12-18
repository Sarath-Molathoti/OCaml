let findpos e l =
  let rec findpos i = function
    | [] -> 0
    | h :: t -> if h = e then i else findpos (i+1) t
  in
  findpos 0 l;;
let delete x l =
  let rec delete n = function 
    | [] -> []
    | h :: t -> if n = 0 then t else h :: delete (n-1) t 
  in
  delete (findpos x l) l;;

