#!/bin/bash

read -p "Informe valor 1: " VALOR1
read -p "Informe valor 2: " VALOR2

echo $(expr $VALOR1 + $VALOR2)