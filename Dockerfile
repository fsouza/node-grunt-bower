FROM balser/buildbox
RUN  curl -sL https://rpm.nodesource.com/setup_6.x | bash -
RUN  yum install -y sudo nodejs
RUN  echo '%wheel    ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
RUN  npm install -g grunt-cli bower
RUN  useradd -mG wheel tester
USER tester
