FROM imcsk8/fedora-22-server-x86_64
MAINTAINER “Iván Chavero” <ichavero@chavero.com.mx>
ENV container docker
RUN dnf -y update
RUN dnf -y install openssh-server openssh-clients git python-setuptools python-crypto
RUN mkdir /root/.ssh
RUN chmod 700 /root/.ssh
RUN systemctl enable sshd
CMD [“/lib/systemd/systemd”]
