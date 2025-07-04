FROM gradle:8.11-jdk21

LABEL maintainer="KRCI Team"

ENV MAKE_VERSION=4.3-4.1build1

RUN apt-get update && \
    apt-get install -y --no-install-recommends make=$MAKE_VERSION && \
    rm -rf /var/lib/apt/lists/*
