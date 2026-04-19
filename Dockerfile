FROM node:20-alpine

WORKDIR /app

RUN apk add --no-cache git

RUN git clone https://github.com/EvolutionAPI/evolution-api.git .

RUN npm install

# 🔥 builda o projeto
RUN npm run build

# 🔥 gera prisma depois do build
RUN npx prisma generate

EXPOSE 3000

# 🔥 roda versão compilada (mais estável)
CMD ["node", "dist/main.js"]
