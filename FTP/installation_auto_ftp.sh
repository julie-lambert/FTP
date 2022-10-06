#!/bin/bash

apt install  adduser openssl proftpd-*

mkdir /etc/proftpd/ssl

cp modules.conf /etc/proftpd/modules.conf
cp proftpd.conf /etc/proftpd/proftp.conf
cp tls.conf /etc/proftpd/tls.conf

echo -e "FR\npaca\nMarseille\nlaPlateforme\nit\n.\n." openssl req -new -x509 -days 365 -nodes -out /etc/proftpd/ssl/proftpd.cert.pem 
-keyout /etc/proftpd/ssl/proftpd.key.pem

echo -e "kalimac\nkalimac\n\n\n\n\no\n" | adduser Merry --force-badname
echo -e "secondbreakfats\nsecondbreakfast\n\n\n\n\no\n" adduser Pippin --force-badname

service proftpd restart

