FROM centos:7
FROM  nginx:latest
RUN mkdir /tmp/frontend
ADD /tmp/frontend https://github.com/roboshop-devops-project/frontend.git
RUN chmod +rwx /usr/share/nginx
WORKDIR /usr/share/nginx/html
RUN rm -rf *

RUN mv /tmp/frontend/frontend-main/* .
RUN mv /tmp/frontend/static/* .
RUN mv /tmp/frontend/localhost.conf /etc/nginx/default.d/roboshop.conf
CMD ['sh', 'start', 'nginx']


