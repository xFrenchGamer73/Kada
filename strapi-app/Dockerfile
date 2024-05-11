# Utiliser une image officielle de Node.js comme base
FROM node:18

# Définir le répertoire de travail
WORKDIR /srv/app

# Copier les fichiers package.json et yarn.lock
COPY package.json yarn.lock ./

# Installer les dépendances
RUN yarn install

# Copier le reste du code de l'application
COPY . .

# Construire l'application Strapi
RUN yarn build

# Exposer le port sur lequel l'application va fonctionner
EXPOSE 1337

# Définir la commande pour exécuter l'application
CMD ["yarn", "start"]
