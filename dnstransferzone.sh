#!/bin/bash

if [ "$1" == "" ]
then
echo "---- DNS TRANSFER ZONE - TOOL RECON ADDRESSES"
echo "=== Criada por Monttanna Durante as aulas da Desec."
echo "=== Como usar: $0 <domain>"
echo "=== Exemplo: businesscorp.com.br"
else
clear
echo "=============================================="
echo "========= MINI PROJECT BY M0NTT4NN4 =========="
echo "== DNS TRANSFER ZONE - TOOL RECON ADDRESSES =="
echo "=============================================="
for dns in $(host -t ns $1 | cut -d " " -f4);do
host -l $1 $dns | cut -d " " -f1,4 | egrep -v ":|;|Using"
done
echo "------------------------------------------------"
echo "FINALIZADO!"
echo "Se caso estiver a fim de mais algumas informações... Execute: host -l -a $1 $dns"
fi
