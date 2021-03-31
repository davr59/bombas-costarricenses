#!/bin/bash
set -o allexport; source .env; set +o allexport
docker image build --build-arg CLI_CONFIG="${CLI_CONFIG}" --build-arg SKILL_ID="${SKILL_ID}" --build-arg SKILL_NAME="${SKILL_NAME}" --build-arg PROFILE="${PROFILE}" . -t ask-push -f Dockerfile
docker compose up
docker compose down
