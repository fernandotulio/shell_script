#!/bin/bash

clear
read -p "Informe o início da sequência: " INICIO
read -p "Informe o final da sequência: " FINAL

for i in $(seq $INICIO $FINAL)
do
  echo $i
  #sleep 1
done 

# mostra os arquivos de um pasta
for i in /home/fer/Documentos/scripts/*
do
    if [ -f $i ] # se for um arquivo
    then
        echo "Arquivo $i" 
        LINHAS=$(cat $i | wc -l)
        echo  " linhas: "$LINHAS
        echo
    fi    
done 