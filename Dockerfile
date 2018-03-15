FROM debian:9

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y nano openssh-server && \
    mkdir /var/run/sshd

RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config

RUN echo root:root | chpasswd

EXPOSE 22
