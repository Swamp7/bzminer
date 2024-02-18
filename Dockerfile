FROM nvidia/cuda:12.1.0-runtime-ubuntu18.04

RUN rm /etc/apt/sources.list.d/cuda.list

RUN apt update \ 
    && apt -y install wget \
    && wget https://github.com/bzminer/bzminer/releases/download/v20.0.0/bzminer_v20.0.0_linux.tar.gz \
    && tar xvzf bzminer_v20.0.0_linux.tar.gz \
    && rm bzminer_v20.0.0_linux.tar.gz

WORKDIR /bzminer_v20.0.0_linux

ENTRYPOINT ["./bzminer"]
