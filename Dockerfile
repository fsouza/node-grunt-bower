FROM node:latest
RUN  apt-get update && apt-get install -y sudo
RUN  echo '%sudo    ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
RUN  npm install -g grunt-cli bower
RUN  useradd -mG sudo tester
USER tester
