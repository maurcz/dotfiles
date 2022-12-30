#!/bin/bash

# Config
PYTHON_VERSION=3.10.4

./1-zsh_config.sh && \
./2-tools.sh && \
./3-pyenv-base.sh "${PYTHON_VERSION}" && \
./4-pyenv-activate.sh "${PYTHON_VERSION}" && \
./5-python-tools.sh
