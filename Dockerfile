FROM jenkins
COPY plugins /usr/share/jenkins/plugins
USER root
RUN apt-get update -y && apt-get install -y vim
ENV JENKINS_UC=http://updates.jenkins.io
COPY config.xml /usr/share/jenkins/ref/config.xml.override
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins
