#!/bin/bash

cd ~/Documentos/imagens-livros

# -d e diretorio, se nao existe cria
if [ ! -d png ]
then
    mkdir png
fi

for imagem in *.jpg
do
    echo 'Converting '$imagem
    imagem_sem_extensao=$(ls $imagem | awk -F. '{ print $1 }')
    convert $imagem_sem_extensao.jpg png/$imagem_sem_extensao.png
done

 
 