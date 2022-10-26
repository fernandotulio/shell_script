#!/bin/bash

for user in /home/*
do
 
    MP4COUNT=0
    MP3COUNT=0
    JPGCOUNT=0
    PNGCOUNT=0
    OLDIFS=$'\n'

    for files in $(find $user -name '*.jpg' -o -name '*.png' -o -name '*.mp3' -o -name '*.mp4')
    do 
       echo $files
       case $files in 
             *.mp4)
                MP4COUNT=$( expr $MP4COUNT + 1 )    
                ;;   
             *.mp3)
                MP3COUNT=$( expr $MP3COUNT + 1 )    
                ;;   
            *.jpg)
                JPGCOUNT=$( expr $JPGCOUNT + 1 )    
                ;;               
            *.png)
                PNGCOUNT=$( expr $PNGCOUNT + 1 )    
                ;;       
       esac 

    done

    echo "Usuario $(basename $user)" #base name mostra apenas o resultado final
    echo "Arquivos MP4: $MP4COUNT" 
    echo "Arquivos MP3: $MP3COUNT"  
    echo "Arquivos JPG: $JPGCOUNT"  
    echo "Arquivos PNG: $PNGCOUNT"  
 
done