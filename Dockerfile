FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

RUN mkdir -p data public/uploads

EXPOSE 3000

CMD ["node", "src/server.js"]
