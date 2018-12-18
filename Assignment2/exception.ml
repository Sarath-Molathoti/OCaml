(*Exception have the exn type, and are declared with the exception keyword*)
(*finds the product of all the elements of a list of integers. We use an exception to
interrupt traversal of the list and return the value 0 when we encounter it*)
exception Zero_found;;
let mult l =
  let rec m lst =
  match lst with
  [] -> 1
  | 0::_ -> raise Zero_found
  | hd::tl -> hd * (m tl)
  in try m l with Zero_found -> 0;;
