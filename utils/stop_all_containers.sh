#!/bin/bash
# Arrêter tous les conteneurs Docker

echo "Stopping all Docker containers..."
docker stop $(docker ps -q)
echo "All Docker containers stopped."
