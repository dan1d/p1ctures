FROM node:16.15

WORKDIR /usr/src/app/p1cture-react

COPY package*.json ./

COPY public/ ./public
COPY src/ ./src

RUN npm install

RUN npm run build

COPY build/ ./build

EXPOSE 3010

CMD ["npm", "run", "start"]
