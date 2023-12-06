FROM node:16.13.0-alpine

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install dependencies
COPY package*.json ./

RUN npm install

# Bundle app source 
COPY . .

# Exports

EXPOSE 3001 3002 3005

CMD [ "npm", "run", "start:dev" ]

# FROM node:16.13.0-alpine

# USER root

# WORKDIR /usr/src/app

# COPY package*.json ./

# RUN npm install

# COPY . .

# RUN npm run build

# EXPOSE 8080

# CMD [ "npm", "run" ,"start:prod" ]
