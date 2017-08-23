FROM ubuntu

#Update the information of packages and dependencies
RUN apt-get update

#Install dependecies
RUN apt-get install -y git
RUN apt-get install -y nodejs
RUN apt-get install -y npm

#Add node into PATH
RUN ln -s /usr/bin/nodejs /usr/bin/node

#Download and move to repository
RUN git clone https://github.com/walterleong95/jquery
RUN cd jquery/

#Install Grunt
RUN npm install -g grunt-cli

#Build command
RUN npm run-script build

RUN exit
