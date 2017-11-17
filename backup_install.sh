#!/bin/bash														
#Nennt dem Kernel den Pfad des Interpreters, der verwendet werden soll
																
if ls /usr/bin/backup.sh 1> /dev/null 2>&1;						#Prüfen ob bereits installiert
	then
		echo "Backup Script ist bereits installiert!"
	else
		if [[ $(/usr/bin/id -u) -ne 0 ]]; 						#Prüfen ob als Root ausgeführt (-ne not equal also nicht gleich)
		then
			echo "Bitte führen Sie das Script als Root aus"		#Fehlermeldung wenn nicht als Root ausgeführt
			exit
		else
			cp backup.sh /usr/bin/								#Backup Scripts kopieren
			cp backup_clear.sh /usr/bin/						#Zum Umbenennen beim Kopieren müsste man z.B. schreiben: cp backup.sh /usr/bin/backup2.sh	

			chmod 755 /usr/bin/backup.sh						#Rechte Setzen
			chmod 755 /usr/bin/backup_clear.sh					# 755= Besitzer darf lesen schreiben ausführen Nutzer und gruppe nur lesen und ausführen
		fi
fi

