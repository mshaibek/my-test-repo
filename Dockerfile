FROM centos:centos7
RUN yum update -y
RUN yum install epel-release -y
RUN yum install nginx -y
COPY itsy/. /usr/share/nginx/html
RUN chmod -R +rx /usr/share/nginx/html
EXPOSE 80
CMD nginx
