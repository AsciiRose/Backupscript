#!/bin/bash
#Nennt dem Kernel den Pfad des Interpreters, der verwendet werden soll

if [ $# -eq 0 ]																#Prüfen ob Parameter gegeben sind (-eq = gleich)
   then
     echo "keine Argumente gegeben, bitte Backup Ordner angeben"			#Fehlermeldung wenn keine Parameter angegeben sind
	 exit 1
   else
	if [ $(ls -d $1*/ | wc -w) -gt 5 ]										#Prüfen ob mehr als 5 Verzeichnisse vorhanden sind (-gt = größer als)
		then
			while [ $(ls -d $1*/ | wc -w) -gt 5 ]							#scheuen ob mehr als 5 Verzeichnisse da sind. wc -w gibt mit dem vorherigen ls Befehl die Anzahl der Verzeichnisse aus
			do
				echo "`ls -dtr $1*/ | head -1` wird gelöscht!"
				rm -r `ls -dtr $1*/ | head -1`								#eines der Verzeichnisse die gelöscht werden sollen nehmen und löschen
			done
	fi
fi 