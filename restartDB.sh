#!/bin/bash

#docker-compose down -f

docker network prune -f
docker volume prune -f

#docker-compose up -d