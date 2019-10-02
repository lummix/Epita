(* Ecrire une fonction qui retourne la valeur maximum d'une liste *)

let max x y = if x>y then
                x
              else
                y;;
 
let rec max_list l = match l with 
    [] -> 0 
   | x:: e -> max x (max_list e) ;;
