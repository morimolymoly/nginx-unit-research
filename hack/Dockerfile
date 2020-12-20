FROM nginx/unit:latest

WORKDIR /usr/src/app

# unit uses nobody
COPY --chown=nobody:nogroup src .

COPY config.json /docker-entrypoint.d/

RUN apt update
RUN apt install -y python3-pip
RUN pip3 install --no-cache-dir -r ./requirements.txt

RUN pwd && ls -la