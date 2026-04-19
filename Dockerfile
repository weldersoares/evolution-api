FROM node:20-alpine

WORKDIR /app

RUN apk add --no-cache git

RUN git clone https://github.com/EvolutionAPI/evolution-api.git .

RUN npm install

# 🔥 ESSA LINHA RESOLVE O ERRO
RUN npx prisma generate

EXPOSE 3000

CMD ["npm", "run", "start"]
