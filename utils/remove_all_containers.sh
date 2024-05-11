#!/bin/bash
# Supprimer tous les conteneurs Docker

echo "Stopping all Docker containers..."
docker stop $(docker ps -q)
echo "Removing all Docker containers..."
docker rm $(docker ps -aq)
echo "All Docker containers removed."