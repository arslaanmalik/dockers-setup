FROM node:latest

ENV TZ=Asia/Karachi

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

RUN npm install -g nodemon

WORKDIR /home/node/app

COPY package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 5000

CMD [ "npm", "start" ]
