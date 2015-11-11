FROM centos:centos7
MAINTAINER “Iván Chavero” <ichavero@chavero.com.mx>
# Based on the dockerfile created by: “Dan Walsh” <dwalsh@redhat.com>
ENV container docker
RUN dnf -y update; dnf clean all
RUN dnf -y install systemd procps-ng procps-ng iproute net-tools iputils yum-fastestmirror yum-presto deltarpm;; dnf clean all;\
(cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;
VOLUME [ “/sys/fs/cgroup” ]
CMD [“/lib/systemd/systemd”]
