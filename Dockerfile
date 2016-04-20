FROM jenkins
COPY plugins /usr/share/jenkins/plugins
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins
