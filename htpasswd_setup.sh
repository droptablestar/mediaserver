#!/bin/bash

echo "docker-compose exec traefik apk add --no-cache apache2-utils"
docker-compose exec traefik apk add --no-cache apache2-utils

echo "docker-compose exec traefik htpasswd -c /etc/traefik/.htpasswd josh"
docker-compose exec traefik htpasswd -c /etc/traefik/.htpasswd josh
