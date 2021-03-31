#!/bin/bash
cd /src/${SKILL_NAME} && \
git config --global user.name ${USER_NAME} && \
git config --global user.email ${USER_EMAIL} && \
git pull && \
cp -rf /data /src/${SKILL_NAME} && \
git add -A && \
(git commit -m 'update data' || echo "No changes to commit") && \
git push
