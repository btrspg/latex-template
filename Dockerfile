FROM debian:stable-slim
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update \
    && apt-get install -y texlive-full
RUN apt-get autoclean \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /workspace

CMD ["bash"]