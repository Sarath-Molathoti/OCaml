(*Sum type with arguments for constructors*)
type suit = Spades | Hearts | Diamonds | Clubs ;;
type card =
King of suit
| Queen of suit
| Knight of suit
| Knave of suit
| Minor_card of suit * int
| Trump of int
| Joker ;;

let rec interval a b = if a = b then [b] else a :: (interval (a+1) b) ;;
let all_cards s =
let face_cards = [ Knave s; Knight s; Queen s; King s ]
and other_cards = List.map (function n -> Minor_card(s,n)) (interval 1 10)
in face_cards @ other_cards ;;
(*all_cards Hearts ;;*)
