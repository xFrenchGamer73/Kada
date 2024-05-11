#!/bin/bash
# Supprimer tous les volumes Docker non utilisés

echo "Pruning unused Docker volumes..."
docker volume prune -f
echo "Unused Docker volumes pruned."
