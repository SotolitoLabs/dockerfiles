FROM imcsk8/fedora-22-systemd-x86_64
MAINTAINER “Iván Chavero” <ichavero@chavero.com.mx>
# Based on the dockerfile created by: “Dan Walsh” <dwalsh@redhat.com>
ENV container docker
RUN dnf -y update; dnf clean all
RUN dnf -y install openssh-server 
