#!/bin/bash
mkdir -p ${INPUT_BASE}.ask && \
touch ${INPUT_BASE}.ask/cli_config && \
echo ${INPUT_CLI_CONFIG} > ${INPUT_BASE}.ask/cli_config && \
ls ${INPUT_BASE}
