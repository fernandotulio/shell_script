#!/bin/bash
 
case $1 in
    [0-9])
        echo "O parâmetro é número"
        ;;
    [A-Z])
        echo "O parâmetro é letra maiúscula"
        ;;    
    [a-z])
        echo "O parâmetro é letra minúscula"
        ;;    
    *)
    echo "Parâmetro não mapeado"

esac
