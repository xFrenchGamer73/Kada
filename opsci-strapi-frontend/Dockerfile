# Utiliser une image officielle de Node.js comme base
FROM node:14

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers package.json et yarn.lock
COPY package.json yarn.lock ./

# Installer les dépendances
RUN yarn install

# Copier le reste du code de l'application
COPY . .

# Exposer le port sur lequel l'application va fonctionner
EXPOSE 5173

# Définir la commande pour exécuter l'application
CMD ["yarn", "start"]
