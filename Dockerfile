FROM centos:centos7
LABEL description="This is website created for docker class"
RUN yum update -y
RUN yum install epel-release -y
RUN yum install nginx -y
COPY itsy/. /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
RUN echo "New index.html content. Like me" > index.html
RUN chmod -R +rx /usr/share/nginx/html
ENV database_url=https://aurora-mysql-vnds.us-east-1.amazonaws.com
EXPOSE 80
CMD nginx && tail -f /dev/null
