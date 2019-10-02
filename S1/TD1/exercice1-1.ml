(*Fonction qui calcule le produit de tous les élements d'une liste *)

let rec produit = function
    [] -> 1
  | e :: l -> produit l * e
