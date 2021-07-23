FROM jenkins/jenkins:latest
 
USER root
RUN apt-get update -y 
RUN apt-get install --force-yes -y sudo 
RUN rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
 
USER jenkins
