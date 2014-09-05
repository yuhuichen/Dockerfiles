# builds running Jenkins
# Jenkins version 1.578
# version 0.1

FROM ubuntu:14.04
MAINTAINER Jeff Chen, jeff.yuhui.chen@gmail.com
#ENTRYPOINT

# set JAVA_HOME
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64/
ENV JENKINS_LOG /var/log/jenkins/jenkins.log

# install dependencies
RUN apt-get update
RUN apt-get install -y --no-install-recommends openjdk-7-jdk
RUN apt-get install -y wget
#RUN apt-get install -y nginx
RUN apt-get clean

# add jenkins repository to container
RUN wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
RUN echo 'deb http://pkg.jenkins-ci.org/debian binary/' >> /etc/apt/sources.list.d/jenkins.list

# install jenkens
RUN apt-get update
RUN apt-get install -y jenkins
RUN mkdir -p /var/run/jenkins/
RUN mkdir -p /var/log/jenkins/
RUN touch $JENKINS_LOG
RUN chown jenkins:jenkins $JENKINS_LOG

EXPOSE 8080
CMD service jenkins restart && tail -f $JENKINS_LOG
