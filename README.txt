README

---------------------------------------------------------------------------------------------------

backup.sh

---------------------------------------------------------------------------------------------------

Rsync wird benötigt

Backup.sh benötigt 2 Parameter
1.) Quelle
2.) Ziel

Backup.sh legt bei Angabe von Quelle und Ziel einen Backup-Ordner mit Datum an.

---------------------------------------------------------------------------------------------------

backup_clear.sh

---------------------------------------------------------------------------------------------------

Die backup_clear.sh benötigt einen Parameter
1.) Backup Ordner

Die Backup_clear löscht in dem Backup-Ordner die letzten 5 Backups.
Beachten: Der Pfad des Ordners muss mit einem Schrägstrich(/) beendet werden.

---------------------------------------------------------------------------------------------------

Install

---------------------------------------------------------------------------------------------------

Das Installationsscript kopiert die beiden Backup-Scripts in den Ordner /usr/bin.
Zudem ändert es die Rechte sodass die Scripts auch ausgeführt werden können.
Das Installationsscript muss als Root oder sudo ausgeführt werden, da ein normaler User nicht 
in /usr/bin schreiben darf bzw. Rechte setzen kann.