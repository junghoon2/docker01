FROM ubuntu:16.04
LABEL maintainer="erdia22@gmail.com"
RUN apt-get update
RUN apt-get install -y python3