
#!/bin/bash

## Déclaration de la variable qui contient le numéro de la page
## utilisation de wget avec cette variable, et répetition 84 fois (boucle for)

for page in `seq 1 52`;
do 
 echo "Téléchargement en cours, veuillez patienter..." ;
 wget -c http://c.learncodethehardway.org/book/ex$page.html
done


#!/bin/bash
## Renomme tous les fichiers 1, 2, 3, 4 en 01, 02, 03, 04...
for nb in `seq 1 9`
        do mv "ex$nb.html" "ex0$nb.html"
done

