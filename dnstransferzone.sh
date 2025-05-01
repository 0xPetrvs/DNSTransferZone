#!/bin/bash

if [ "$1" == "" ]
then
echo "---- DNS TRANSFER ZONE - TOOL RECON ADDRESSES"
echo "=== Criada por 0xPetrvs Durante as aulas da Desec."
echo "=== Como usar: $0 <<domain>>"
echo "=== Exemplo: businesscorp.com.br"
else
clear
echo "=============================================="
echo "========= MINI PROJECT BY PETRVS =========="
echo "== DNS TRANSFER ZONE - TOOL RECON ADDRESSES =="
echo "=============================================="
for dns in $(host -t ns $1 | cut -d " " -f4);do
host -l $1 $dns | cut -d " " -f1,4 | egrep -v ":|;|Using"
done
echo "------------------------------------------------"
echo "FINALIZADO!"
echo "Para mais informações, Execute: host -l -a $1 $dns"
fi
