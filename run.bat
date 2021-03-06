#!/bin/bash
mkdir -p ${INPUT_BASE}.ask && \
touch ${INPUT_BASE}.ask/cli_config && \
echo ${INPUT_CLI_CONFIG} > ${INPUT_BASE}.ask/cli_config && \
cd /app && \
echo ${INPUT_SKILL_NAME} | ask init --hosted-skill-id ${INPUT_SKILL_ID} -p ${INPUT_PROFILE} && \
cd ${INPUT_SKILL_NAME} && \
git config --global user.name ${INPUT_USER_NAME} && \
git config --global user.email ${INPUT_USER_EMAIL} && \
git pull && \
cp -rf /app/data ./lambda/ && \
git add -A && \
git commit -m 'update data' || echo "No changes to commit" && \
git push
