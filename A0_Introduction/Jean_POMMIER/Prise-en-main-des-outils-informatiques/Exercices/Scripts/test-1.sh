#!/bin/bash
# Déclaration fichier Bash

competence="A0 A1 A2 A3 A4";
#Déclare le tableau de variables "competences" contenant les différentes valeurs A0..A1..A2..
for x in $competence;
#Execute la boucle pour chaque itération du tableau
  do mkdir -p ./$x/Cours/JPommier ./$x/Exercices/JPommier/Scripts;
# Crée les dossiers A0/Cours/JPommier, A0/Exercices/JPommier/Scripts, A1/Cours/JPommier, A1/Exercices/JPommier/Scripts en cascade à la localisation actuelle
done
# Fin de boucle