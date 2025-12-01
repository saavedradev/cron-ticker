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

