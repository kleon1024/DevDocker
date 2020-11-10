FROM ubuntu:18.04
LABEL maintainer="Ding Li <dingli.cm@gmail.com>"

RUN apt-get update && apt install -y software-properties-common && \
    add-apt-repository -y ppa:deadsnakes/ppa && apt-get update && \
    apt-get install -y python3.8 python3-venv python3-pip libpq-dev && \
    ln -sf /usr/bin/python3.8 /usr/bin/python3
