FROM imcsk8/fedora-22-server-x86_64
MAINTAINER “Iván Chavero” <ichavero@chavero.com.mx>
ENV container docker
RUN dnf -y update
RUN dnf -y install ssh git python-setuptools python-crypto
RUN mkdir /root/.ssh
RUN chmod 700 /root/.ssh
CMD [“/lib/systemd/systemd”]
