FROM node:17-alpine

ENV ENV_NODE=production

EXPOSE 3000

WORKDIR /meet/dockerapp

COPY ["package*.json","./"]

RUN npm install pm2 -g

RUN npm install

COPY . .

ENTRYPOINT [ "pm2-runtime", "server.js" ]
