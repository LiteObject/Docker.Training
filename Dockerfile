FROM ubuntu:latest

LABEL   author="Mohammed"

ARG     buildversion

ENV     APP_ENV=development
ENV     build=${buildversion}

WORKDIR /app/images
COPY    images/ .
RUN     apt-get update && apt-get install -y curl

RUN     echo "Build version: $build"
CMD     tail -f /dev/null
