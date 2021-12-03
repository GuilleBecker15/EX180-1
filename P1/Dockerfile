FROM centos

ARG NAME=redhat

MAINTAINER mosco moscolo@gmail.com

RUN    yum install -y httpd && \
       yum clean all

COPY ./files/index.html /var/www/html/index2.html

ENV PORT=80
ENV ENVIRONMENT=default
EXPOSE ${PORT}

RUN echo "Hello ${NAME} from ${ENVIRONMENT}!!" > /var/www/html/index.html

ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D", "FOREGROUND"]
