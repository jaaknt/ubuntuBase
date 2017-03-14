#!/bin/bash

# https://docs.docker.com/engine/installation/linux/ubuntu/#/install-using-the-repository
sudo apt-get -y --no-install-recommends install curl apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://apt.dockerproject.org/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update
sudo apt-get -y install docker-ce
