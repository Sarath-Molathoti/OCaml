let encoding l =
    let rec sub count list = function
      | [] -> [] 
      | [x] -> (x, count+1) :: list
      | a :: (b :: _ as t) -> if a = b then sub (count + 1) list t
                              else sub 0 ((a,count+1) :: list) t in
    List.rev (sub 0 [] l) ;;
