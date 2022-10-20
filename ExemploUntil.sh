#!/bin/bash
PROCESSO=ssh
clear

until ps axu |grep $PROCESSO |grep -v grep > /dev/null
do 
     echo Inicie o $PROCESSO
     sleep 3
     echo
done

echo $PROCESSO inciado.
echo PID: $(pgrep $PROCESSO)