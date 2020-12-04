FROM node:12-alpine

RUN mkdir -p /usr/app/

WORKDIR /usr/app/

COPY package*.json ./

#RUN npm install

COPY --chown=node:node . .

RUN npm install -g @angular/cli

EXPOSE 8080

WORKDIR /usr/app/angular-project

