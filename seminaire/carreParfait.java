//Simple boucle pour afficher les carrés parfaits permettant de résoudre l'exercice 2 du tp Ocaml

public class carreParfait{

    public static void main(String[]{
	    int i = 31;
	    while(true){
		int resultat = i * i;
		System.out.println(resultat);
		i++;
		if(resultat > 10000){
		    break;

		}
	    }
	}
     }
   
