FROM alpine:3.14
ENV NODE_VERSION 17.6.0
#FROM node:16.14.0
#ENV NODE_ENV=production
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]

RUN npm install 

COPY . . 

CMD node app.js
