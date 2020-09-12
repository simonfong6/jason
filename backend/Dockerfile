FROM ubuntu:focal

WORKDIR /code

RUN apt-get update && \
  apt-get install --no-install-recommends --yes \
  python3 \
  python3-pip

ENV FLASK_APP ./backend/backend/server.py
ENV FLASK_RUN_HOST 0.0.0.0
ENV FLASK_ENV development
