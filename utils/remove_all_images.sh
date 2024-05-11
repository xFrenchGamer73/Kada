#!/bin/bash
# Supprimer toutes les images Docker

echo "Removing all Docker images..."
docker rmi -f $(docker images -q)
echo "All Docker images removed."
