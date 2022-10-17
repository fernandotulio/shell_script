#!/bin/bash
clear
KERNEL=$(uname -r) 
CPUNO=$(cat /proc/cpuinfo |grep "model name" |wc -l)
UPTIME=$(uptime -s)


echo "==============================================================="
echo "Relatório da Máquina: $HOSTNAME"
echo "Data/Hora: $(date)"
echo "==============================================================="

echo "Maquina ativa desde: $UPTIME"
echo "Versão do Kernel: $KERNEL"

echo "CPUS:"
echo "Quantidade de CPUs: $CPUNO"
 