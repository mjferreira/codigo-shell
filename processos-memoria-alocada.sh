#!/bin/bash

if [ ! -d logs ]
then
    mkdir logs
fi

processos_memoria(){
processos=$(ps -e -o pid --sort -size | head -n 11 | grep [0-9])
for pid in $processos
do
    nome_processo=$(ps -p $pid -o comm=)
    #Remove espaço em branco do nome do processo
    nome_processo=$(echo ${nome_processo//[' ']/_})
    echo -n $(date +%F,%H:%M:%S,) >> logs/$nome_processo.log
    tamanho_processo=$(ps -p $pid -o size | grep [0-9])
    echo "$(bc <<< "scale=2;$tamanho_processo/1024") MB" >> logs/$nome_processo.log
done
}

processos_memoria
if [ $? -eq 0 ]
then
    echo "Os arquivos foram salvos com sucesso"
else
    echo "Houve um problema na hora de salvar os arquivos"
fi
