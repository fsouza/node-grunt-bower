FROM balser/go-buildbox:1.6
RUN  curl -sL https://rpm.nodesource.com/setup_6.x | bash -
RUN  yum install -y sudo nodejs && yum clean -y all
RUN  sed -ie 's/Defaults\s\+requiretty//g' /etc/sudoers
RUN  echo '%wheel    ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
RUN  npm install -g grunt-cli bower
RUN  useradd -mG wheel tester
USER tester
