FROM 594769675851.dkr.ecr.ap-southeast-1.amazonaws.com/node:16.13.0-alpine

USER root

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 8080

CMD [ "npm", "run" ,"start:prod" ]
