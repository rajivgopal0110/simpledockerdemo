FROM centos:centos7
LABEL maintainer="Rajiv Gopal"
RUN yum -y install httpd
COPY index.html /var/www/html/
COPY image*.png /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

