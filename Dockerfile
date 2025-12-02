# Dependencias de desarrollo
FROM node:20-alpine3.21 AS deps
#cd app
WORKDIR /app
#Dest /app
COPY package.json ./
# intalar las dependencias
RUN npm install

# Build y tests
FROM node:20-alpine3.21 AS builder
WORKDIR /app
COPY --from=deps /app/node_modules ./node_modules
COPY . .
RUN npm run test

# Dependencias de produccion
FROM node:20-alpine3.21 AS prod-deps
WORKDIR /app
COPY package.json ./
RUN npm install --prod

# Ejecutar la APP
FROM node:20-alpine3.21 AS runner
WORKDIR /app
COPY --from=prod-deps /app/node_modules ./node_modules
#Dest /app
COPY app.js ./
COPY tasks ./tasks
#comando run de la imagen
CMD ["node", "app.js"]