(*Fonction qui compte le nombre d'occurences d'une valeur donné dans une liste *)


let rec occ l x = match l with
    [] -> 0
  | e :: l when e = x -> 1 + occ l x
  | e :: l -> occ l x  ;;
