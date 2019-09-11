FROM python:3.7.4-slim-buster

LABEL MAINTAINER="Tiku Okoye <tikuochukwu.okoye@andela.com>"
LABEL application="Blogged"

ENV TERM=xterm-256color

WORKDIR /usr/app

# update and install necessary packages
RUN apt-get -y update && apt-get -y upgrade && \
  apt-get install -y software-properties-common python3-dev

COPY requirements.txt /usr/app/requirements.txt
RUN pip3 install -r requirements.txt 
