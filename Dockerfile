FROM python:3.6.4-alpine
MAINTAINER tilldettmering@gmail.com+

ENV SHELL /bin/bash

ADD Pipfile app/

WORKDIR app/

RUN apk update \
        && set -ex \
        && apk add --no-cache git \
        && pip --no-cache-dir install pipenv \
        && pipenv install --deploy --system

ENTRYPOINT pipenv shell
