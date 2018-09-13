FROM circleci/node:8.12.0-jessie-browsers

USER root

RUN set -ex \
    && apt-get update && sudo apt-get install -y \
        python-dev \
        python-pip \
        shellcheck \
    && sudo apt-get clean \
    && sudo rm -rf /var/lib/apt/lists/*

RUN set -ex \
    && pip install --no-cache-dir -U pip setuptools \
    && pip install --no-cache-dir awscli

USER circleci
