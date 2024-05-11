#!/bin/bash
# Script complet pour arrêter, supprimer et nettoyer Docker

# Arrêter tous les conteneurs Docker
echo "Stopping all Docker containers..."
docker stop $(docker ps -q)
echo "All Docker containers stopped."

# Supprimer tous les conteneurs Docker
echo "Removing all Docker containers..."
docker rm $(docker ps -aq)
echo "All Docker containers removed."

# Supprimer toutes les images Docker
echo "Removing all Docker images..."
docker rmi -f $(docker images -q)
echo "All Docker images removed."

# Supprimer tous les volumes Docker non utilisés
echo "Pruning unused Docker volumes..."
docker volume prune -f
echo "Unused Docker volumes pruned."

echo "Docker cleanup completed."
