#!/bin/bash
 
 HORA=$(date +%H)
 MIN=$(date +%M)

 echo "$HORA:$MIN" 

 if [ $HORA -ge 06 -a $HORA -lt 12 ]
 then
    echo "Bom dia!" 
 elif [ $HORA -ge 12 -a $HORA -lt 18 ]
 then
  echo "Boa tarde!" 
else
  echo "Boa noite!" 
 fi


if [ $HORA -ge 12 ]
 then
    AMPM=PM
else
    AMPM=AM
 fi


  echo $AMPM