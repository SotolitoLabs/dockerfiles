FROM fedora

MAINTAINER Leonel Nunez  "leonel@enelserver.com"

RUN yum update -y
RUN yum -y install nginx

VOLUME ["/etc/nginx"]

EXPOSE 80

CMD ["nginx" , "-g" ,"daemon off;"]


