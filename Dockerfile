FROM node:10

RUN mkdir -p /usr/src/app/proxy

WORKDIR /usr/src/app/proxy

COPY package*.json ./

RUN npm install

COPY . . 

EXPOSE 3000

CMD [ "npm", "start" ]