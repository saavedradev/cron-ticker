# cron-ticker


## Listar imagenes
docker image ls

## construir imagen
docker build -t saavedradev/cron-ticker:pantera .

## Montar contenedor
docker container run -d saavedradev/cron-ticker:pantera

## ejecutar terminal iterativo del contenedor
docker exec -it db31 /bin/sh

## subir a docker hub
docker push saavedradev/cron-ticker:pantera

## apuntar pantera al latest
docker image tag saavedradev/cron-ticker:pantera saavedradev/cron-ticker

## generar build con diferentes arquitecturas
# docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t saavedradev/cron-ticker:latest --push .

# /app /usr /lib
# FROM --platform=linux/amd64 node:19.2-alpine3.16
# FROM node:19.2-alpine3.16
FROM --platform=$BUILDPLATFORM node:19.2-alpine3.16

