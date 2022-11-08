#!/bin/bash
if [ -z $1 ] #Verificar se está recebendo parâmetro
then
    echo "Iniciando o container sem parâmetro"
else 
    echo "Iniciando o container com o parêmtro $1"
fi