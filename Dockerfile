FROM python:3.6.4
MAINTAINER tilldettmering@gmail.com+

ENV SHELL /bin/bash

ADD Pipfile app/

WORKDIR app/

RUN pip --no-cache-dir install pipenv && \
    pipenv install

ENTRYPOINT pipenv shell
