# Pull base image
FROM ubuntu:15.04

# Author
MAINTAINER "Maxime Vaude"

# Add source
RUN apt-get update
RUN apt-get -y install clang make
COPY . /home/ft_strace
WORKDIR /home/ft_strace
