FROM mongo:latest
RUN  mongo < mongodb-main/catalogue.js
RUN  mongo < mongodb-main/users.js
EXPOSE 27017
EXPOSE 28017
CMD ["mongod"]



# cd /tmp
# unzip mongodb.zip
# cd mongodb-main
# mongo < catalogue.js
# mongo < users.js
