FROM node:18.18.2
FROM node:21.7.2-bullseye-slim

# Upgrade Node Package Manager (NPM)
RUN npm install -g npm@9.1.3

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port
EXPOSE 8080

# Command to run the application
CMD [ "node", "index.js" ]
