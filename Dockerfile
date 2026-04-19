FROM node:20-alpine

WORKDIR /app

RUN apk add --no-cache git

RUN git clone https://github.com/EvolutionAPI/evolution-api.git .

RUN npm install

EXPOSE 3000

# 🔥 roda o prisma quando iniciar
CMD npx prisma generate && npm run start
