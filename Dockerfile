FROM debian:unstable-slim

RUN echo 'deb-src http://deb.debian.org/debian unstable main' >> /etc/apt/sources.list
RUN apt update -y && apt upgrade  -y
RUN apt install -y build-essential git zlib1g-dev
# RUN apt build-dep -y openssl

RUN mkdir /sslscan
RUN git clone https://github.com/rbsec/sslscan.git /sslscan
WORKDIR /sslscan
RUN make static

ENTRYPOINT ["./sslscan"]
