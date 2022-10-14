#!/bin/bash
echo "Ola"

#   $0 - Nome do programa
#   $# - Quantidade de parametros   
#   $* - Todos os parametros inseridos
#   $0-9 - Cada um dos parametros (maximo de 9 parametros)

echo "O script $0 recebeu $# parametros"
 
echo ""
 
echo "Parametro \$1 = $1"
echo "Parametro \$2 = $2"
#...
echo "Parametro \$9 = $9"