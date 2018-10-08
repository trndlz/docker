FROM ubuntu:16.04

RUN apt-get update -q
RUN apt-get upgrade -y
RUN apt-get install -yq ca-certificates curl openssh-server postfix
# RUN sed 's/session\s*required\s*pam_loginuid.so/session optional pam_loginuid.so/g' -i /etc/pam.d/sshd

WORKDIR /tmp

RUN curl -LO https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh

RUN bash /tmp/script.deb.sh
RUN apt-get -y install gitlab-ce
RUN apt-get update
RUN apt-get install -y tzdata

EXPOSE 443 80 22

ENTRYPOINT ((/opt/gitlab/embedded/bin/runsvdir-start &) && gitlab-ctl reconfigure &) && sleep 10000000000000

#### Build Dockerfile
# docker build -t ex03 .
#### Run GitLab
# docker run -it --rm -p 8080:80 -p 8022:22 -p 8443:443 --privileged ex03
#### Open GitLab
# In browser: <machine ip>:8080
# Then, define password (username is 'root')
# Then, create SSH key in terminal 'ssh-keygen', paste it in a new SSH key in user profile
# SSH is located in ~/.ssh/id_rsa.pub
# To clone a repo, git clone http://<ip machine>:8080/root/<repo name>.git

### INFOS
## Main tutorial
# https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-gitlab-on-ubuntu-16-04
## --privileged ? Avoid ulimit error messages
# https://gitlab.com/gitlab-org/omnibus-gitlab/issues/1350
## Ports
# https://hub.docker.com/r/gitlab/gitlab-ce/~/dockerfile/
