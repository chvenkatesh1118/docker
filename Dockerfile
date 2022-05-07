FROM centos:7
FROM nginx
USER root
RUN yum -y update
#RUN git clone https://github.com/roboshop-devops-project/frontend.git /tmp
#RUN rm -rf /usr/share/nginx/html/*
#RUN mv /tmp/frontend/frontend-main/* /usr/share/nginx/html
#RUN mv /tmp/frontend/static/* /usr/share/nginx/html
#CMD ["nginx", "-g", "daemon off;"]
CMD [ "python", "./my_script.py" ]