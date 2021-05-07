FROM node:10.22.1

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

RUN npm run tsc

COPY . .

EXPOSE 8080

CMD ["node", "www/server.js"]
