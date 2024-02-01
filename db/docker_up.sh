#!/usr/bin/env bash

###################################################################
# Constants
###################################################################

DOCKER_ENV_FILE=./db/.env.dev
DOCKER_COMPOSE_FILE=./db/docker-compose.dev.yaml

###################################################################
# Main
###################################################################

docker compose -f $DOCKER_COMPOSE_FILE --env-file $DOCKER_ENV_FILE down -v
docker compose -f $DOCKER_COMPOSE_FILE --env-file $DOCKER_ENV_FILE pull
docker compose -f $DOCKER_COMPOSE_FILE --env-file $DOCKER_ENV_FILE build
docker compose -f $DOCKER_COMPOSE_FILE --env-file $DOCKER_ENV_FILE up -d 