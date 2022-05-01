FROM centos:7
RUN yum update -y
RUN yum install nginx -y
RUN curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"
RUN rm -rf /usr/share/nginx/html/*
RUN unzip /tmp/frontend.zip
RUN mv frontend-main/* /usr/share/nginx/html
RUN mv static/* /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]