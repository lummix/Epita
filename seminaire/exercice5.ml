(*Exercice seminaire Algo 
Convertion d'un entier en chiffres romains *)

open String;;

let convNbr num pos=
  if num=0 then "Nothing to do"
  else
	let r_hundred="CDM" and r_ten="XLC" and r_one="IVX" in
		let current= match pos with
		      1->r_hundred
		     |2->r_ten
		     |3->r_one
		     |_->"   " in
                          let c1=sub current 0 1 and c2=sub current 1 1 and c3=sub current 2 1 in
				let tmp=if num>=6 && num<=8 then c2 else "" in
					if pos<>0 then 
					     match num with
						1|6->tmp^c1
						|2|7->tmp^c1^c1
						|3|8->tmp^c1^c1^c1
						|4->c1^c2
						|5->c2
						|9->c1^c3
						|_->failwith "Error..."
					else
                                          let k1="M" and k2="MM" and k3="MMM" in
					     match num with
					       1->k1
                                              |2->k2
                                              |3->k3
                                              |4->k1^k3
                                              |5->k2^k3
                                              |6->k3^k3
                                              |7->k3^k3^k1
                                              |8->k3^k3^k3
                                              |9->k3^k3^k3|_->"";;
							
let getRoman nbr=
	let c1=nbr/1000 and c2=(nbr mod 1000)/100 and c3=(nbr mod 100)/10 and c4=(nbr mod 10) in
		(convNbr c1 0)^(convNbr c2 1)^(convNbr c3 2)^(convNbr c4 3);;

