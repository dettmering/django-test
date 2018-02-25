FROM python:3.6.4
MAINTAINER tilldettmering@gmail.com+

ENV SHELL /bin/bash

ADD requirements.txt app/

WORKDIR app/

RUN pip --no-cache-dir install -r requirements.txt
