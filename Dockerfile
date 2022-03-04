FROM node:16.14.0 AS builder
ENV NODE_ENV=production
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . . 


FROM alpine:latest  
RUN apk --no-cache add ca-certificates
RUN apk add --no-cache nodejs
WORKDIR /app
COPY --from=builder ./

CMD node app.js
