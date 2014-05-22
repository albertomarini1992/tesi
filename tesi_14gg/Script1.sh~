#!/bin/bash

for element in *
do
	if [ -f $element ]
	then 
		repo="file_filtrati"/$element
		#finche ci sono righe nel file
		while read line ;
		do

		#controllo se la riga inizia con Internet Protocol Version 4
		echo $line | cut -c 1-150 | grep "Internet Protocol Version 4" >> $repo

		#controllo se la riga inizia con Transmission Control Protocol
		echo $line | cut -c 1-150 | grep "Transmission Control Protocol" >> $repo

		#passiamo il file al while e ricominciamo
		done < $element

		rm $element
	fi

done
