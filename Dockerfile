FROM node:18.14.1

WORKDIR /src/app

ARG MONGODB_ADDON_URI_ARG
ENV MONGODB_ADDON_URI=$MONGODB_ADDON_URI_ARG

COPY package.json ./
COPY package-lock.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]
