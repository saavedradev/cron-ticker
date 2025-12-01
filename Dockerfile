# /app /usr /lib
FROM node:20-alpine3.21

#cd app
WORKDIR /app

#Dest /app
COPY app.js package.json ./

# intalar las dependencias
RUN npm install

#Dest /app
COPY . .

# Realizar testing
RUN npm run test

#comando run de la imagen
CMD ["node", "app.js"]