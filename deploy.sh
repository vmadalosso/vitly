#!/bin/bash

echo "Iniciando deploy da aplicação Vitly..."

# Atualiza código - opcional (remover o comment se quiser usar)
# git pull origin main

echo "Parando containers atuais..."
docker-compose down

echo "Subindo containers atualizados..."
docker-compose up -d --build

echo "Containers em execução:"
docker ps --filter "name=vitly_app_container" --filter "name=postgres_container" --filter "name=redis_container"

echo "Deploy concluído com sucesso!"
