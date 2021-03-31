FROM davr59/node-dev:ask

VOLUME /data

CMD ["sh", "/app/push.ps1"]

WORKDIR /app
COPY /push.ps1 ./

ARG CLI_CONFIG=${CLI_CONFIG}

WORKDIR /src
RUN mkdir -p /root/.ask && \
    touch /root/.ask/cli_config && \
    echo ${CLI_CONFIG} > /root/.ask/cli_config

ARG SKILL_NAME=${SKILL_NAME}
ARG SKILL_ID=${SKILL_ID}
ARG PROFILE=${PROFILE}

WORKDIR /src
RUN echo ${SKILL_NAME} | ask init --hosted-skill-id ${SKILL_ID} -p ${PROFILE}
