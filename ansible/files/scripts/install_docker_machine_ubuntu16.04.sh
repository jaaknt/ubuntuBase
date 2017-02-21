#!/bin/bash

# https://docs.docker.com/compose/install/

DOCKER_MACHINE_VERSION=0.9.0

sudo curl -L "https://github.com/docker/machine/releases/download/v${DOCKER_MACHINE_VERSION}/docker-machine-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-machine && \
sudo chmod +x /usr/local/bin/docker-machine
