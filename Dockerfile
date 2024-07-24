FROM nvidia/cuda:12.2.2-runtime-ubuntu20.04

RUN rm /etc/apt/sources.list.d/cuda.list

RUN apt update \ 
    && apt -y install wget \
    && wget https://github.com/bzminer/bzminer/releases/download/v21.4.0/bzminer_v21.4.0_linux.tar.gz \
    && tar xvzf bzminer_v21.4.0_linux.tar.gz \
    && rm bzminer_v21.4.0_linux.tar.gz

WORKDIR /bzminer_v21.4.0_linux

ENTRYPOINT ["./bzminer"]
