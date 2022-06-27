FROM centos:7
FROM  nginx:latest
WORKDIR /usr/share
ADD frontend https://github.com/roboshop-devops-project/frontend.git
RUN chmod +rwx nginx
RUN rm -rf *
RUN unzip /tmp/frontend.zip
RUN mv frontend-main/* .
RUN mv static/* .
RUN rm -rf frontend-master static README.md
RUN mv localhost.conf /etc/nginx/default.d/roboshop.conf
CMD ['sh', 'start', 'nginx']


