FROM python:3.7.4-slim-buster

LABEL MAINTAINER="Bryan Munene <bryan.munene@andela.com>"
LABEL application="travela-machine-learning"

ENV TERM=xterm-256color

WORKDIR /usr/app

# update and install necessary packages
RUN apt-get -y update && apt-get -y upgrade && \
  apt-get install -y software-properties-common python3-dev libpq-dev gcc && \
  apt install -y apt-transport-https ca-certificates gnupg2 software-properties-common 

COPY requirements.txt /usr/app

RUN pip3 install --upgrade pip setuptools
RUN pip3 install -r requirements.txt

# copy app files
COPY . /usr/app

# copy entrpoint script
COPY docker/tests/entrypoint.sh /usr/app
