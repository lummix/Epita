(*Exercice 3 seminaire algo *)

let surface x =
  if ( x - 5000 <= 99 || x - 5000 >= 999 ) then
      false
  else
    let res = (x - 5000) in
    let res = res + 2 in
    let res = (res * 1000) + res in
    let res = res / 7 in
    let res = res - (7 * (res / 7)) in
    let res = res - ( 11 * ( res / 11)) in
    let res = res - (13 * (res / 13)) in
    if (res = 500) then
      true
    else
      false
        ;;
    
