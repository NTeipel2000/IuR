# Aufgabe 1

1)  **Installieren Sie Oracle VM VirtualBox (Base Package). VirtualBox läuft auf Windows- Linux- und MacOS-Host. Beachten Sie bitte die Lizenzbedingungen.**
2) **Nutzen Sie VirtualBox, um zwei virtuelle Maschinen aufzusetzen**
3) **Installieren Sie auf diesen beiden virtuellen Maschinen das Linux-Betriebssystem „Ubuntu“**
![1.1.png](img/1.1.png)

4) **Konfigurieren Sie die beiden virtuellen Maschinen, sodass Folgendes gilt:**<br>
- Die Hostname der beiden virtuellen Maschinen lauten sirm01 und sirm02 (Hostnamen müssen nicht identisch mit den Namen der virtuellen Server unter VirtualBox sein).<br>
  Per `nano /etc/hostname` und `nano /etc/hosts` die entsprechenden Hostnamen ändern<br>
![1.2.png](img/1.2.png)<br>

- Die beiden virtuellen Maschinen haben statische IP-Adressen aus dem Netz 10.11.12.0(10.11.12.0/24) erhalten.<br>
  Problem: Host-Netz ist Intern. Also im 192.168.x.x Bereich. Adressen aus dem 10.11.12.x Bereich können nicht direkt verwendet werden, wenn auch noch Internetzugang bestehen soll.<br>
  Lösung: Die VMs brauchen 2 Netzwerkadapter.
  - NAT: Zugriff auf das Internet. VM geht über den Host ins Netz.
  - Host-Only: Kommunikation im geforderten 10.11.12.x Netzwerk (Vom Internet isoliert).
  - Erstellen des Host-Only Netzwerks:<br>
  ![1.3.png](img/1.3.png)
  - Netzwerkadapter beider VMs konfigurieren: <br>
  ![1.4.png](img/1.4.png)![1.5.png](img/1.5.png)
  - Bei beiden VMs DHCP deaktivieren und die statischen IPs eintragen (sirm01 = 10.11.12.2, sirm02 = 10.11.12.3)<br>
  ![1.6.png](img/1.6.png)
- Beide virtuellen Maschinen können mittels IP-Protokoll miteinander kommunizieren.<br>
  Ping von sirm01 auf sirm02: `ping 10.11.12.3`
  Auf sirm02 auf Pakete lauschen: `sudo tcpdump -i any icmp`<br>
  ![1.6.png](img/1.7.png)
- Beide virtuellen Maschinen haben Zugriff ins Internet.<br>
  Testen, ob ein Call ins Internet funktioniert: `curl example.com`<br>
  ![1.8.png](img/1.8.png)
- Die installierte Software ist auf dem neuesten Stand (gemäß Paketmanager).<br>
  `sudo apt update && sudo apt upgrade`
- Von der einen virtuellen Maschine kann jeweils mittels SSH auf die andere zugegriffen werden. Der Zugriff mittels SSH erfordert keine Angabe eines Passworts.<br>