FROM node:20-alpine

WORKDIR /app

RUN apk add --no-cache git

RUN git clone https://github.com/EvolutionAPI/evolution-api.git .

RUN npm install

EXPOSE 3000

# 🔥 solução correta
CMD sh -c "npx prisma generate && npx prisma db push && npm run start"
