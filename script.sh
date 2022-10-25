#!/bin/bash

mkdir /publico

chmod 777 /publico

mkdir /adm

chmod 770 /adm

mkdir /ven

chmod 770 /ven

mkdir /sec

chmod 770 /sec

groupadd GRP_ADM

groupadd GRP_VEN

groupadd GRP_SEC

useradd carlos -s /bin/bash -m -p $(openssl passwd -crypt 12345) -G GRP_ADM
useradd joao -s /bin/bash -m -p $(openssl passwd -crypt 12345) -G GRP_ADM
useradd maria -s /bin/bash -m -p $(openssl passwd -crypt 12345) -G GRP_ADM

useradd debora -s /bin/bash -m -p $(openssl passwd -crypt 12345) -G GRP_VEN
useradd sebastiana -s /bin/bash -m -p $(openssl passwd -crypt 12345) -G GRP_VEN
useradd roberto -s /bin/bash -m -p $(openssl passwd -crypt 12345) -G GRP_VEN

useradd josefina -s /bin/bash -m -p $(openssl passwd -crypt 12345) -G GRP_SEC
useradd amanda -s /bin/bash -m -p $(openssl passwd -crypt 12345) -G GRP_SEC
useradd rogerio -s /bin/bash -m -p $(openssl passwd -crypt 12345) -G GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
