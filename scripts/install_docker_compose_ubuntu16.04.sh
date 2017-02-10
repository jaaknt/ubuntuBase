#!/bin/bash

# https://docs.docker.com/compose/install/

DOCKER_COMPOSE_VERSION=1.11.1

sudo curl -L "https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

