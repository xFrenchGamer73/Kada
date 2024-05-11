#!/bin/bash
# Redémarrer tous les conteneurs Docker

echo "Restarting all Docker containers..."
docker restart $(docker ps -q)
echo "All Docker containers restarted."