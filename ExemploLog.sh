#!/bin/bash

DATAHORA=$(date +%H:%M)
ARQALUNOS=$HOME/Documentos/scripts/alunos.txt
LOG="$HOME/Documentos/scripts/log_interno.out"

echo "$(date) - Iniciando o Script..." >> $LOG 

clear
echo "Exibir data e hora atual: "$DATAHORA

echo "====================================="
echo "Listagem de Alunos:"
sort $ARQALUNOS

DATAHORA=$(date +%H)
echo "====================================="
echo "Nova Hora Atual: $DATAHORA"

echo "$(date) - Fim do Script..." >> $LOG


