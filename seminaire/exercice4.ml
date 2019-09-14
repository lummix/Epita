(*Exercice 4 seminaire algo *)

open String;; (*import de la lib String dans mon env *)

let date x =
  if ( length x = 10 && get x 2 = '/'  && get x 5 = '/') then
    let day = int_of_string(sub x 0 2) in
    let month = int_of_string(sub x 3 2) in
    let year = int_of_string(sub x 6 4) in
    if( day < 1 || day > 31 || month < 1 || month > 12) then
      invalid_arg "Merci d'entrer une date valide"
    else
      if( year > 999 && year < 10000) then
        match month with
          1 | 3 | 5 | 7 | 9 | 11 -> (if day < 31 then
                                       let day = day + 1 in
                                       if( day < 10 && month < 10) then
                                         let res ="0" ^ string_of_int(day) ^ "/0"^ string_of_int(month) ^"/" ^ string_of_int(year)in
                                         res
                                       else
                                         if(day < 10 && month > 10) then
                                           let res ="0" ^ string_of_int(day) ^ "/" ^ string_of_int(month) ^"/" ^ string_of_int(year)in
                                           res
                                         else
                                           if (day > 10 && month < 10) then
                                             let res = string_of_int(day) ^ "/0"^ string_of_int(month) ^"/" ^ string_of_int(year)in
                                             res
                                           else
                                             let res = string_of_int(day) ^ "/"^ string_of_int(month) ^"/" ^ string_of_int(year)in
                                             res
                                     else
                                       let month = month + 1 in
                                       let res = "01/" ^ string_of_int(month) ^ "/" ^ string_of_int(year) in
                                       res )

          | 2 | 4 | 6 | 8 | 10 | 12 -> (if day < 30 then
                                       let day = day + 1 in
                                       if( day < 10 && month < 10) then
                                         let res ="0" ^ string_of_int(day) ^ "/0"^ string_of_int(month) ^"/" ^ string_of_int(year)in
                                         res
                                       else
                                         if(day < 10 && month > 10) then
                                           let res ="0" ^ string_of_int(day) ^ "/" ^ string_of_int(month) ^"/" ^ string_of_int(year)in
                                           res
                                         else
                                           if (day > 10 && month < 10) then
                                             let res = string_of_int(day) ^ "/0"^ string_of_int(month) ^"/" ^ string_of_int(year)in
                                             res
                                           else
                                             let res = string_of_int(day) ^ "/"^ string_of_int(month) ^"/" ^ string_of_int(year)in
                                             res
                                     else
                                       let month = month + 1 in
                                       if(month < 12) then
                                         if(month < 10) then
                                         let res = "01/0" ^ string_of_int(month) ^ "/" ^ string_of_int(year) in
                                         res
                                         else
                                           let res = "01/" ^ string_of_int(month) ^ "/" ^ string_of_int(year) in
                                           res
                                       else
                                          let res = "01/01/" ^ string_of_int(year+1) in
                                          res )
          | _ -> failwith "date: Une erreur est survenue..."
                                                   
      else
        invalid_arg "date: Le programme ne prend pas en charge cette date..."
  else
    invalid_arg "date: L'argument fourni n'est pas correct";;

