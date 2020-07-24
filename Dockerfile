FROM ubuntu:latest
MAINTAINER mradtke2604+docker@gmail.com

RUN mkdir aax2mp3tools
WORKDIR /aax2mp3tools

RUN apt-get update
RUN apt-get install -y --no-install-recommends wget unzip ffmpeg ca-certificates

RUN wget https://github.com/KrumpetPirate/AAXtoMP3/archive/master.zip && \
    unzip master.zip && \
    rm master.zip && \
    mv AAXtoMP3-master/* . && \
    rm -rf AAXtoMP3-master

CMD ["bash"]