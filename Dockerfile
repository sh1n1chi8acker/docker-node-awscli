FROM circleci/node:8.12.0-jessie-browsers

USER root

RUN set -ex \
    && apt-get update && apt-get install -y \
        python-dev \
        python-pip \
        shellcheck \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN set -ex \
    && pip install -U pip setuptools \
    && pip install --no-cache-dir awscli

USER circleci
