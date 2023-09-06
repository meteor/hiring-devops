FROM node:18.14.1

ARG MONGODB_ADDON_URI_ARG
ENV MONGODB_ADDON_URI=$MONGODB_ADDON_URI_ARG

WORKDIR /src/app

COPY package.json ./
COPY package-lock.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]