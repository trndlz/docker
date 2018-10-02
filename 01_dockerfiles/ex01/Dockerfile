FROM        debian:9.5

MAINTAINER  tmervin@student.42.fr

RUN         apt-get update
RUN         apt-get upgrade
RUN         apt-get -y install wget
RUN         apt-get -y install lbzip2

EXPOSE      9987/udp
EXPOSE      10011/tcp
EXPOSE      30033/tcp

WORKDIR     /root/byotss

RUN         wget http://dl.4players.de/ts/releases/3.4.0/teamspeak3-server_linux_amd64-3.4.0.tar.bz2
RUN         tar xfv teamspeak3-server_linux_amd64-3.4.0.tar.bz2

WORKDIR     teamspeak3-server_linux_amd64

RUN         touch .ts3server_license_accepted

ENTRYPOINT  ["sh", "ts3server_minimal_runscript.sh"]

########## Build command
# docker build --tag ex01 .

########## Run
# docker run -it --rm -p 9987:9987/udp -p 10011:10011 -p 30033:30033 ex01

########## Connect on TeamSpeak
# Server Adress 192.168.99.100:9987 (<IP Machine>:9987)
# Server password -> 'password' below Server Query Admin Account created
# Nickname: serveradmin
# Then "token=XXXXXXX"

########## TeamSpeak Debian useful link
# https://www.vultr.com/docs/how-to-install-teamspeak-3-server-on-debian-9-stretch