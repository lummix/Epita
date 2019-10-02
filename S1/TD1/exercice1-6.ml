(*2e Minimum d'une fonction *)

let min x y = if x < y then x else y;;

let rec min_liste l = match l with
      [x] -> x
     |e::f -> min e (min_liste f)
     |[] -> failwith "Liste vide !";;

let rec search x l =
  if x <= 0 then
    invalid_arg "L'index ne peut pas etre négatif/égal à 0"
  else
    let rec nth x = function
  | [] -> invalid_arg "Not found"
  | t::_ when x = 1 -> t
  | _::q -> nth (x-1) q
    in
    nth x l;;

