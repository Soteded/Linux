#!/bin/sh

echo " "
echo "Script pour télécharger une musique depuis Youtube"
echo " "

echo "Insérez l'URL (lien) Youtube de votre musique :"
read lien

echo "Souhaitez-vous la vidéo ? [Y/n]"
read video

echo "Indiquez le chemin ou la musique sera stockée (Rien = dossier courant): "
read chemin

if [ -z "$chemin" ]
then
	if echo "$video" | grep "N"
	then
		echo "Téléchargement en cours"
		youtube-dl -F 136 "$lien" > /dev/null 2>&1
		echo "Téléchargement fini !"

	elif echo "$video" | grep "n"
	then
		echo "Téléchargement en cours"
		youtube-dl -F 136 "$lien" > /dev/null 2>&1
		echo "Téléchargement fini !"
	else
		echo "Téléchargement en cours"
		youtube-dl "$lien" > /dev/null 2>&1
		echo "Téléchargement fini !"
	fi
else
	cd "$chemin"
	if echo "$video" | grep "N"
	then
		echo "Téléchargement en cours"
		youtube-dl -F 136 "$lien" > /dev/null 2>&1
		echo "Téléchargement fini !"

	elif echo "$video" | grep "n"
	then
		echo "Téléchargement en cours"
		youtube-dl -F 136 "$lien" > /dev/null 2>&1
		echo "Téléchargement terminé !"

	else
		echo "Téléchargement en cours"
		youtube-dl "$lien" > /dev/null 2>&1
		echo "Téléchargement terminé !"
	fi
fi
