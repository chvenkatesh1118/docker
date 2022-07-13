FROM : nginx
RUN rm -rf  /usr/share/nginx/html/*
COPY docker/roboshop/frontend/static/* /usr/share/nginx/html/
CMD ['sh', 'nginx', 'start']