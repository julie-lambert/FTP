#!/bin/bash

sudo service proftpd stop

#Désinstaller le paquet proftpd, les fichiers de configurations et les dependances.

apt autoremove --purge  proftpd-* openssl

#Supprimer le dossier ssl

rm -r /etc/proftpd/ssl

#supprimer les users 

deluser -r  Merry
deluser -r Pippin