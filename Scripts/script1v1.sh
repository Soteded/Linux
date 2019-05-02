#!/bin/bash

echo "Le jeu trop bien du plus grand/petit"

let rdm="$RANDOM"%1001

trap "echo ' Nah, tu joues'" 2 3

a=100000
nbrCoups=0

if [ "$a" -eq "$a" ]
then
        while [ "$a" -ne "$rdm" ]	
	do	
	read a
		if [ "$a" -eq "$a" 2>/dev/null ]
		then
        		if [ "$a" -gt "$rdm" ]
        		then
                		echo "Oue oue, il est plus petit"
				nbrCoups=$(("$nbrCoups"+1))
        		elif [ "$a" -lt "$rdm" ]
        		then
                		echo "Oue oue, il est plus grand"
        			nbrCoups=$(("$nbrCoups"+1))
			else
                		echo "Bien joué, tu as trouvé en $nbrCoups coups !"
        		fi
		else
			echo "Donne un numérique"
			a=100000
			nbrCoups=$(("$nbrCoups"+1))
		fi
	done
fi
