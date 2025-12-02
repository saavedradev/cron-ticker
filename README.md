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

# generar build con diferentes arquitecturas

docker buildx create --name mybuilder --driver docker-container --bootstrap

## usar builder
docker buildx use mybuilder

# Listar nuildx
docker buildx ls

## generar builder con diferentes arquitecturas
docker buildx build --platform linux/amd64,linux/arm64 -t saavedradev/cron-ticker:perro --push .

