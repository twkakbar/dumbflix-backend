FROM node:dubnium-alpine3.11

ENV NODE_ENV production

WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN npm build
EXPOSE 5000
CMD [ "node", "server.js" ]
