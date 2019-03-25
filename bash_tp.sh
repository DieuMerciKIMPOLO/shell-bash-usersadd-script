#!/bin/bash

echo '===================================================='
echo '#        TP-DE-PROGRAMMATION-AVEC-SHELL-BASH       #'
echo '===================================================='
echo ''
read -p "Donnez le prenom : " prenom
read -p "Donnez le nom    : " nom
read -p "Donnez le login  : " login
read -p "Donnez le groupe : " groupe
read -p "Donnez le rép de : " rep
grep -q "^$groupe" /etc/group ; let x=$?
if [ $x -eq 1 ]
then
 groupadd "${groupe}"
fi
useradd $login -N -m -c "${prenom} ${nom}" -g "${groupe}"

echo "${prenom} ${nom}, a ete cree avec success"






