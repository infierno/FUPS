###########################################
## $page declaration 
## Use of wget with this variable, x times
## Change the extension for your needs
##########################################
#!/bin/bash
for page in `seq 1 x`;
do 
 echo "Téléchargement en cours, veuillez patienter..." ;
 wget -c http://randomwebsite.org/book/$page.html
done


#!/bin/bash
## Rename all the  1, 2, 3, 4 in 01, 02, 03, 04...
for nb in `seq 1 9`
        do mv "$nb.html" "0$nb.html"
done

