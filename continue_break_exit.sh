#!/bin/bash
_INPUT_STRING="sair"


for i in $(seq 1 10);
do
    if [[ "$i" < "8" ]]; then
        continue
    fi
    if [[ "$i" > "9" ]]; then
        break;
    fi
        echo $i;
done



while :
do  
    echo "Olá"
    read _INPUT_STRING

    if [[ $_INPUT_STRING = 'sair' ]] || [[ $_INPUT_STRING = 'SAIR' ]]  
    then
        exit 0     
    else 
        continue
    fi     
done


exit 0;