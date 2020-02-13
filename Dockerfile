FROM fedora
MAINTAINER arajasu "aravind subbarao"
RUN yum install httpd -y
# this is apache httpd webserver
WORKDIR /var/www/html/
ADD . .
EXPOSE 80
ENTRYPOINT httpd -DFOREGROUND
# systemctl start http
