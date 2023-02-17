FROM node:lts-alpine

WORKDIR /home/node/app

COPY . /home/node/app

RUN apk add --no-cache sh

RUN npm install -g @nestjs/cli

RUN chmod +x ./entrypoint.sh

USER node
