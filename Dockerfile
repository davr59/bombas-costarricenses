FROM davr59/node-dev:ask

ENTRYPOINT ["sh", "/app/run.bat"]

WORKDIR /app
COPY /run.bat ./
COPY /data/ ./data/
