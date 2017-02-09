FROM node

WORKDIR /usr/src/app
COPY . /usr/src/app
RUN npm install bower -g
RUN npm install

ENV RETHINKDB_HOST localhost
ENV RETHINKDB_PORT 28015
ENV URI mydomain.com

EXPOSE 3000
CMD node app.js
