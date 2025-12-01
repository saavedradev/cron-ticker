# /app /usr /lib
# FROM --platform=linux/amd64 node:20-alpine3.21
FROM node:20-alpine3.21

#cd app
WORKDIR /app

#Dest /app
COPY package.json ./

# intalar las dependencias
RUN npm install

#Dest /app
COPY . .

# Realizar testing
RUN npm run test

# Eliminar archivos y directorios no necesarios
RUN rm -rf tests && rm -rf node_modules

# Unicamente las dependencias de produccion
RUN npm install --prod
#comando run de la imagen
CMD ["node", "app.js"]