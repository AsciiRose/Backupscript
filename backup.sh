#!/bin/bash
#Nennt dem Kernel den Pfad des Interpreters, der verwendet werden soll

if ls /usr/bin/rsync* 1> /dev/null 2>&1;													#Prüfen ob rsync installiert ist
then
	if [ $# -eq 0 ]																			#Prüfen ob Parameter gegeben sind
	   then
		 echo "Keine Argumente gegeben. Bitte geben Sie die Quelle und das Ziel an."		#Fehlermeldung wenn keine Parameter angegeben sind
		 exit 1
	elif [ $# -eq 1 ]
		then
		 echo "Zu wenige Parameter angegeben! Es müssen Quelle und Ziel angegeben werden." 	#Fehlermeldung wenn nur ein Parameter angegeben ist
		 exit 1
	elif [ $# -gt 2 ]																		#Prüfen ob mehr als 2 Parameter gegeben sind (-gt = größer als)
		then
			echo "Die Anwendung akzeptiert nur 2 Parameter: Quelle und Ziel"				#Fehlermeldung das zuviele Parameter angegeben sind
			exit 1
	   else
		quelle=$1																			#Quelle setzen
		ziel=$2																				#Ziel setzen
		datum=`date +'%Y-%m-%d'`															#Aktuelles Datum in Varriable speichern; Das + muss direkt vor '%Y-%m-%d' stehen. Es darf kein Leerzeichen dazwischen
		
		rsync -a -v -z --progress $quelle $ziel"/"$datum									#Rsync backup; Parameter -a = archive -v = verbose -z = compress
	fi
else
    echo "Rsync ist nicht installiert!"
fi
