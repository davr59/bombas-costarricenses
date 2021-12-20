#!/bin/bash
set -o allexport; source .env; set +o allexport
docker image build . -t ask-push -f Dockerfile
docker compose up -d
docker compose down
