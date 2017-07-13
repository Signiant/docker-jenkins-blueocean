FROM jenkinsci/blueocean:latest

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/install-plugins.sh plugins.txt
