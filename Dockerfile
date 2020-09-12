FROM ubuntu:focal

ENV FLASK_APP ./backend/server.py
ENV FLASK_RUN_HOST 0.0.0.0
ENV FLASK_ENV production

WORKDIR /code

RUN apt-get update && \
  apt-get install --no-install-recommends --yes \
  python3 \
  python3-pip

COPY ./backend /code

RUN pip3 install .

CMD ["flask", "run"]
