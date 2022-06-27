FROM centos:7
FROM  nginx:latest
RUN  curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"
RUN  cd /usr/share/nginx/html
RUN  chmod +rwx nginx docker
RUN  rm -rf *
RUN  unzip /tmp/frontend.zip
RUN  mv frontend-main/* .
RUN  mv static/* .
RUN  rm -rf frontend-master static README.md
RUN  mv localhost.conf /etc/nginx/default.d/roboshop.conf
CMD ['sh', 'start', 'nginx']


