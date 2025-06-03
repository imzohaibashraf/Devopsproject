FROM centos:latest
MAINTAINER technical.cloud@gmail.com
RUN yum install -y httpd  \
  zip  \
  unzip
# myflaskwebserverforcinnova
# cb7ec255cfc143ad4847a2682539e25f
ADD https://www.free-css.com/assets/files/free-css-templates/download/page256/portfolio-perfect.zip  /var/www/html
WORKDIR /var/www/html
RUN unzip portfolio-perfect.zip
RUN cp -rvf  html-freebie-portfolio-perfect-master/*  .
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80

