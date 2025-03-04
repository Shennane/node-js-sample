# Utiliser une image de base officielle Node.js
FROM node:12

# Définir le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copier les fichiers package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers de l'application
COPY . .

# Exposer le port sur lequel l'application va écouter
EXPOSE 8080

# Démarrer l'application
CMD [ "npm", "start" ]