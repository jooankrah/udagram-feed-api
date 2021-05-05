# Use NodeJS base image
FROM node:13

# Create app directory
WORKDIR /usr/src/app

#copy app config files, package.json and package-lock.json
COPY src/config ./
COPY .npmrc ./
COPY package*.json ./

# Build project
RUN npm i

# Copy app source
COPY www ./

# Bind the port that the image will run on
EXPOSE 8080

# Define the Docker image's behavior at runtime
CMD ["node", "server.js"]

