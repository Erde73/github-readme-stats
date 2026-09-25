FROM node:22-alpine

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci

COPY . .

ENV PORT=9000
EXPOSE 9000

CMD ["node", "express.js"]
