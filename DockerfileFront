FROM node:latest

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

COPY package*.json yarn.lock ./

WORKDIR /home/node/app

USER node

COPY --chown=node:node . .

RUN yarn install

CMD ["yarn","build"]

EXPOSE 3002

CMD ["yarn","start"]
