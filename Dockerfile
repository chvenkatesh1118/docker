FROM centos:7
FROM nginx
RUN yum update -y
RUN yum install unzip
ADD https://github.com/roboshop-devops-project/frontend/archive/main.zip /tmp
RUN rm -rf /usr/share/nginx/html/*
RUN unzip /tmp/main.zip
RUN mv /tmp/frontend-main/* /usr/share/nginx/html
RUN mv /tmp/static/* /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]