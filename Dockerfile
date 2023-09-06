FROM node:18.14.1

WORKDIR /src/app

ARG MONGODB_ADDON_URI_ARG
ENV MONGODB_ADDON_URI='mongodb://meteorhiring:meteorhiring@ac-nhcvxhf-shard-00-00.bebrwbu.mongodb.net:27017/message?ssl=true&authSource=admin&readPreference=secondary'

COPY package.json ./
COPY package-lock.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]
