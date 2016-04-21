FROM jenkins
COPY plugins /usr/share/jenkins/plugins
USER root
RUN apt-get update -y && apt-get install -y vim
ENV JENKINS_UC=http://updates.jenkins.io
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins
