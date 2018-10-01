FROM debian AS ex01

MAINTAINER tmervin@student.42.fr

RUN apt-get update && apt-get upgrade
RUN apt-get -y install wget bzip2

RUN wget http://dl.4players.de/ts/releases/3.0.13.8/teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2
RUN tar xfvj teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2
RUN cd teamspeak3-server_linux_amd64
RUN ./ts3server_minimal_runscript.sh createinifile=1
RUN sed -ie 's/voice_ip=/voice_ip=0.0.0.0/g' ts3server.ini
RUN ./ts3server_startscript.sh start

# Build Dockerfile
# docker build --tag ex01 .

# Run Dockerfile
# docker run -it --rm ex01 .

# List images
# docker images