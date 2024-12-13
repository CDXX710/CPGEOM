#!/bin/bash

code_insee=( # Déclaration des codes INSEE dans l'array "code_insee".
  "31032"
  "31056"
  "31069"
  "31088"
  "31149"
  "31150"
  "31157"
  "31291"
  "31351"
  "31417"
  "31424"
  "31526"
  "31555"
  "31557"
  )
city_name=( # Déclaration des noms de Villes dans l'array "city_name".
  "Aussonne"
  "Beauzelle"
  "Blagnac"
  "Brax"
  "Colomiers"
  "Cornebarrieu"
  "Cugnaux"
  "Leguevin"
  "Mondonville"
  "Pibrac"
  "Plaisance-du-Touch"
  "Salvetat-Saint-Gilles"
  "Toulouse"
  "Tournefeuille"
  )

mkdir foncier_communal; # Crée le dossier racine "foncier_communal".
cd foncier_communal; # Se rend dans le dossier racine créé.
for i in ${!code_insee[*]};  do # Boucle dans chacun des Arrays de manière synchrone. Les paires sont donc définies par l'ordre de déclaration.
  echo "${code_insee[$i]} is ${city_name[$i]}" # Log dans la console les correspondances en parralèle du traitement.
  mkdir ${city_name[$i]}; # Crée chaque sous-dossier avec le nom de la ville, dans le dossier racine "foncier_communal".
  cd ${city_name[$i]}; # Se rend dans le sous-dossier créé
  wget -np https://files.data.gouv.fr/geo-dvf/latest/csv/2024/communes/31/${code_insee[$i]}.csv; # Télécharge la donnée au code INSEE correspondant dans le sous-dossier créé.
  cd ..; # Reviens au dossier racine "foncier_communal".
done