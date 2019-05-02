#!/bin/sh

echo "Script n°3 de sauvegarde en shell"

echo "Entrez le /chemin/du/dossier à sauvegarder"
read chemin

jour=$(date +%u)

if [ "$jour" -eq 4 ]
then
	tar rvf "$chemin.tar" "$chemin"


