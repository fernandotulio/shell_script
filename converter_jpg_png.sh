#!/bin/bash

converte_imagem(){
    cd ~/Documentos/imagens-livros
    # -d e diretorio, se nao existe cria
    if [ ! -d png ]
    then
        mkdir png
    fi

    for imagem in *.jpg
    do
        echo "Converting " $imagem
        imagem_sem_extensao=$(ls $imagem | awk -F. '{ print $1 }')
        convert $imagem_sem_extensao.jpg png/$imagem_sem_extensao.png
    done
}

converte_imagem 2>erros_conversao.txt # 2>err... caso o retorno for maior que zero, grava os erros em um arquivo

echo $?

if [ $? -eq 0 ]
then
    echo "Conversão realizada com sucesso"
else
    echo "Houve uma falha no processo"
fi
