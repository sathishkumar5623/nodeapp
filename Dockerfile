 FROM node:latest

WORKDIR /usr/src/app

COPY package*.json ./
ENV NODE_ENV=production
RUN npm install
COPY . .

EXPOSE 8080
CMD ["node", "run.js"]
