FROM node:latest
RUN  npm install -g grunt-cli bower
RUN  useradd -m tester
USER tester
