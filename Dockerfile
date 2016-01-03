FROM node:latest

MAINTAINER Francescu

WORKDIR /home/app/test/blog
ADD . /home/app/test/blog

RUN npm config set registry http://registry.npmjs.org/

#install npm dependencies
RUN npm install
RUN npm install -g node-gyp

# Tell Docker we are going to use this port
EXPOSE 3001

# The command to run our app when the container is run
CMD [ "node", "server/server.js"]
