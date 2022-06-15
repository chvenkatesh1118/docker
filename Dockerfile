FROM centos:7
FROM openjdk:8
FROM tomcat:8
ADD https://chantich1.s3.amazonaws.com/JavaHelloWorldApp.1.war /tmp
RUN cp  /tmp/*.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]