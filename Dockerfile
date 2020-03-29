FROM centos:centos7
LABEL description="This is website created for docker class"
RUN yum update -y
RUN yum install epel-release -y
RUN yum install nginx -y
VOLUME /opt
EXPOSE 80
CMD nginx && tail -f /dev/null
