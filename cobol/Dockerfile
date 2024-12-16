FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    gnucobol \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

CMD ["/bin/bash"]
