FROM node:18-alpine

WORKDIR /app

COPY package.json .

RUN npm i

COPY . ./

USER node

EXPOSE 2000


CMD ["npm", "run", "dev"]