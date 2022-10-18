#!/bin/bash

DIRDEST=$HOME/Backup

#se não existe o diretorio Bkp dentro do home do usuario, cria
if [ ! -d $DIRDEST ]
then
    echo "Criando diretório $DIRDEST"
    mkdir -p $DIRDEST
fi

DAYS7=$(find $DIRDEST -ctime -7 -name backup_home\*tgz)
 
if [ "$DAYS7" ]
then
  echo "Já foi gerado bkp do diretório $HOME nos ultimos 7 dias"
  echo -n "Deseja continuar? (s/n):"
  read -n1 CONT # -n1 captura só uma tecla digitada
  
  echo
  if [ "$CONT" = N -o "$CONT" = n -o "$CONT" = "" ]
  then
    echo "Bkp abortado!"
    exit 1  
  elif [ "$CONT" = S -o "$CONT" = s ]
  then
    echo "Será criado mais um bkp para esta mesma semana"    
  else
    echo "Opção inválida!"
    exit 2       
  fi   

fi

echo "Criando o bkp..."
ARQ="backup_home_$(date +%Y%m%d%H%M).tgz"

#tar zcvpf $DIRDEST/$ARQ --absolute-names --exclude="$HOME/Google Drive" "$HOME"/* > /dev/null 
# --exclude="$HOME/Google Drive" # se quiser exluir diretorio 
# > /dev/null  para não imprimir nada na tela

tar zcvpf $DIRDEST/$ARQ --exclude="$DIRDEST" "$HOME"/* > /dev/null 

echo
echo "O backup de nome \""$ARQ"\" foi criado em $DIRDEST"

