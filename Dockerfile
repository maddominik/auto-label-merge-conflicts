FROM node:alpine

WORKDIR /home/autolabel

COPY package.json package-lock.json ./
RUN npm ci
COPY . .

ENTRYPOINT ["node", "/home/autolabel/dist/index.js"]