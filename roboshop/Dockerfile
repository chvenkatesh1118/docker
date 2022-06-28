FROM centos:7
FROM  nginx:latest
WORKDIR /tmp/
ADD frontend https://github.com/roboshop-devops-project/frontend.git
RUN chmod +rwx /usr/share/nginx
WORKDIR /usr/share/nginx/html/
RUN rm -rf *
WORKDIR /tmp/
#RUN mv /tmp/frontend/frontend-main/* .
COPY /tmp/frontend/static/*  /usr/share/nginx/html/
#RUN mv /tmp/frontend/localhost.conf /etc/nginx/default.d/roboshop.conf
CMD ['sh', 'start', 'nginx']


