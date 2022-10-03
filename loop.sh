#!/bin/bash

for i in {1..4}
do
  echo $i
done

echo '-'

for runlevel in 0 1 2 3 
do
 echo $runlevel
done

echo '-'

for ((i=0;i<5;i++));
do
echo $i
done

echo '-'
contador=0;
while [ $contador -lt 10 ]; do
echo O valor de contador = $contador
(( contador = contador + 1 ))
done
echo '-'

echo #sozinho pula de linha 

for runlevel in 0 1 2 3 4 
  do
    mkdir rc${runlevel}.d
  done

  