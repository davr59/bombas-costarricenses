FROM davr59/node-dev:ask

ENTRYPOINT ["sh", "/app/entrypoint.ps1"]

WORKDIR /app
COPY /entrypoint.ps1 ./
COPY /data/ ./data/
