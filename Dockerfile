FROM ubuntu:14.04 
RUN apt-get update -y && apt-get install -y make gcc pkg-config portaudio19-dev libvorbis-dev dictionaries-common libenchant1c2a
RUN apt-get install -y gtk2.0

RUN mkdir -p /tmp/build/bethewumpus-0.05/
ADD bethewumpus-0.05.tar.gz /tmp/build/
RUN cd /tmp/build/bethewumpus-0.05/ && make
