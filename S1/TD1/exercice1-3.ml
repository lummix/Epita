(*Ecrire une fonction qui recherche si un élement est présent dans une list *)

let rec contain l x = match l with
    [] -> false
  | e :: l when e = x -> true
  | e :: l -> contains l x ;;
