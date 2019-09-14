(*Algo Epita / Vendredi 13 Septembre 2019 

Exercice 2

Ecrire une fonction Caml qui détermine si un entier donné en paramètre satisfait les conditions:
-> le code est constitué de 4 chiffres
->les 2 premiers chiffres sont égaux
-> les 2 derniers chiffres sont égaux
-> le nombre forme un carré parfait *)

let plaque x =
  let m = x / 1000 and
      c = (x mod 1000) / 100 and
      d = (x mod 100) / 10 and
      u = (x mod 10) in
  if (x <= 999  || x >= 10000) then
    invalid_arg "code: Merci d'entrer un nombre contenant 4 chiffres"
  else
    if (( m = c) && (d = u )) then
      if (x = int_of_float(sqrt(float_of_int(x))) * int_of_float(sqrt(float_of_int(x)))) then
        true
      else
        false
    else
      false

 (*Quel est le code ? 7744 *)
      
