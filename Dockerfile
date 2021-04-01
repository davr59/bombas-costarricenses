FROM davr59/node-dev:ask

ENTRYPOINT ["sh", "/app/entrypoint.sh"]

WORKDIR /app
COPY /entrypoint.sh ./
COPY /data/ ./data/
