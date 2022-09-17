FROM  nginx
RUN rm -rf  /usr/share/nginx/html/*
COPY static/* /usr/share/nginx/html/
COPY localhost.conf /usr/share/nginx

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]


