FROM centos:7
FROM nginx
RUN wget https://github.com/roboshop-devops-project/frontend/archive/main.zip
RUN rm -rf /usr/share/nginx/html/*
RUN unzip main.zip
RUN mv frontend-main/* /usr/share/nginx/html
RUN mv static/* /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]