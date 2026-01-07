# Aufgabe 3a

**Konfigurieren Sie die virtuellen Maschinen aus Aufgabe 1 mit Ansible. Verwenden Sie hierfür folgende Vorgaben:**
- Erstellen Sie eine ansible.cfg. Erläutern Sie, welche Standardkonfiguration sie hier sinnvollerweise setzen sollten.
- Erstellen Sie eine Inventory Datei und gruppieren Sie ihre Maschinen so, wie sie es für sinnvoll erachten.
- Schreiben Sie ein Playbook, das zeigt, dass alle Maschinen erreichbar sind und das System aktuell ist bzw. aktualisiert, wenn es nicht aktuell ist.
- Schreiben Sie ein Playbook, das jeweils Nginx auf den VMs web01 und web02 installiert und über Port 8081 erreichbar ist. Lassen sie auf der Startseite den Namen ihrer VM ausgeben.
- Es soll mittels eines Playbooks MariaDB auf der VM db01 installiert werden. Der Port 3306 soll freigegeben werden


# Aufgabe 3b

**Ansible ermöglicht die Verwendung von Templates auf Basis von Jinja2.**
- Erläutern Sie, was solche Templates sind, und wozu und in welcher Weise Templates in Ansible genutzt werden können.
  - Templates sind eine Art Textvorlagen mit Platzhaltern und Logik, die beim Ausführen dynamisch mit Daten gefüllt werden.
  - Inhalt ist eine Konfigurationsdatei, die um Logik-Elemente erweitert wurde.
  - Sie können für Skripte, Configs für Services, Environment-Files und weiteres benutzt werden.

**Verwendung von Jinja2-Templates.**
- Sorgen Sie dafür, dass mittels Templates der Port der Konfiguration über eine Variable im Playbook frei wählbar ist.
- Überprüfen Sie mittels Ansible assert, ob die Maschinen über den entsprechenden Port 8081 erreichbar sind
