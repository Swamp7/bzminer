FROM nvidia/cuda:12.1.0-runtime-ubuntu18.04

RUN rm /etc/apt/sources.list.d/cuda.list

RUN apt update \ 
    && apt -y install wget \
    && wget https://github.com/bzminer/bzminer/releases/download/v21.1.1/bzminer_v21.1.1_linux.tar.gz \
    && tar xvzf bzminer_v21.1.1_linux.tar.gz \
    && rm bzminer_v21.1.1_linux.tar.gz

WORKDIR /bzminer_v21.1.1_linux

ENTRYPOINT ["./bzminer"]
