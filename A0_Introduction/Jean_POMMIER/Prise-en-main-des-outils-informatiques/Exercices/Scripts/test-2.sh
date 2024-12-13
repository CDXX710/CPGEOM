#!/bin/bash
array=(
  Vietnam
  Germany
  Argentina
)
array2=(
  Asia
  Europe
  America
)
for index in ${!array[*]}; do # boucle synchrone dans les deux tableaux de valeurs
  echo "${array[$index]} is in ${array2[$index]}" # Mise en correspondance de var-array1 avec var-array2
done