#!/bin/bash

cd ~/Documentos/imagens-livros

for imagem in *.jpg
do
  echo 'Converting '$imagem
   imagem_sem_extensao=$(ls $imagem | awk -F. '{print $1}')
   convert $imagem_sem_extensao.jpg $imagem_sem_extensao.png
done


 