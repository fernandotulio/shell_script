#!/bin/bash
clear


ls /home/$1 > /dev/null 2>$1 || { echo "Usuário inexistente" ; exit 1; }

USERID=$(grep $1 /etc/passwd|cut -d":" -f3)


echo $(grep $1 /etc/passwd)
echo "User id: $USERID"