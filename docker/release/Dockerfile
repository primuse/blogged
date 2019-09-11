FROM python:3.7.4-slim-buster

LABEL MAINTAINER="Bryan Munene <bryan.munene@andela.com>"
LABEL application="travela-machine-learning"

ENV TERM=xterm-256color

WORKDIR /usr/app

# update and install necessary packages
RUN apt-get -y update && apt-get -y upgrade && \
  apt-get install -y software-properties-common curl python3-dev libpq-dev gcc

COPY requirements.txt /usr/app

RUN pip3 install --upgrade pip setuptools
RUN pip3 install -r requirements.txt

# copy app files
COPY . /usr/app
