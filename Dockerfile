FROM node:14.17.3-alpine3.14

WORKDIR /usr/src/app

RUN apk add curl

COPY package*.json ./
RUN npm install

COPY . .

RUN npm run build

ENTRYPOINT ["npm", "run", "dev"]
