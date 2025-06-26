# Etapa base com Node
FROM node:20-alpine

# Diretório de trabalho
WORKDIR /app

# Copiar arquivos de dependências
COPY package.json package-lock.json ./

# Instalar dependências
RUN npm ci

# Copiar código-fonte
COPY . .

# Expor porta do servidor (ajuste se for diferente)
EXPOSE 3333

# Comando para rodar o servidor
CMD ["npx", "tsx", "./src/server.ts"]
