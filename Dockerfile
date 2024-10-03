# Utiliser une image Node.js officielle comme base
FROM node:18

# Définir le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copier le fichier package.json et package-lock.json dans le conteneur
COPY package*.json ./

# Installer les dépendances du projet
RUN npm install

# Copier le reste du code source dans le conteneur
COPY . .

# Exposer le port sur lequel l'application sera accessible
EXPOSE 3000

# Commande par défaut pour démarrer l'application
CMD [ "npm", "start" ]
