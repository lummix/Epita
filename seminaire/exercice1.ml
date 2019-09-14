(*Algo Epita / Vendredi 13 Septembre 2019 

Exercice 1

Ecrire une fonction Caml qui détermine si un entier donné en paramètre satisfait les conditions:
-> le code est constitué de 4 chiffres
->la somme de ses quatre ciffres = 13
-> le ciffre des milliers 2 fois > chiffre des unités
-> chiffre des centaines 3 * > chiffre des dizaines *)

let code x =
  let m = x / 1000 and
      c = (x mod 1000) / 100 and
      d = (x mod 100) / 10 and
      u = (x mod 10) in
  if (x <= 999  || x >= 10000) then
    invalid_arg "code: Merci d'entrer un nombre contenant 4 chiffres"
  else
    if( m + c + d + u = 13) then
      if ((m / u) = 2 && (c / d) = 3) then
        true
      else
        false
    else
      false

 (*Quel est le code ?
 -> 6313*)
        
