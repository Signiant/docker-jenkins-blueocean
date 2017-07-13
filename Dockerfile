FROM jenkinsci/blueocean:latest
USER root
COPY plugins.txt /plugins.txt

RUN /bin/bash -l -c "/usr/local/bin/install-plugins.sh  `cat /plugins.txt | tr \"\\n\" \" \"`"
USER jenkins
