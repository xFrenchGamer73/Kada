#!/bin/bash

# Mettre à jour le système
sudo apt update && sudo apt upgrade -y

# Installer les dépendances nécessaires
sudo apt install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common

# Ajouter la clé GPG officielle de Docker
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Ajouter le dépôt Docker à APT sources
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Mettre à jour la liste des paquets
sudo apt update

# Installer Docker CE
sudo apt install -y docker-ce docker-ce-cli containerd.io

# Vérifier l'installation de Docker
sudo systemctl status docker

# Installer Docker Compose
DOCKER_COMPOSE_VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep '"tag_name"' | sed -E 's/.*"([^"]+)".*/\1/')
sudo curl -L "https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Vérifier l'installation de Docker Compose
docker-compose --version

# Installer xrdp
sudo apt install -y xrdp

# Activer et démarrer xrdp
sudo systemctl enable xrdp
sudo systemctl start xrdp

# Ajouter l'utilisateur au groupe Docker
sudo usermod -aG docker $USER

# Installer Yarn
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install -y yarn

# Vérifier l'installation de Yarn
yarn --version

# Afficher un message de fin
echo "Installation terminée : Docker, Docker Compose, xrdp et Yarn sont installés."
