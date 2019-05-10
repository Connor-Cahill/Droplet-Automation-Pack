#!/bin/bash

VPS_IP=$1
PROJECT=$2
REPO_NAME=$3
ENV_FILE=$4

curl -fsSL https://get.docker.com -o get-docker.sh \
    && sh get-docker.sh \
    && apt-get update && apt-get install -y docker-compose < "/dev/null" \
    git clone $PROJECT $REPO_NAME


