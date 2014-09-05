# builds running WSO2 API Manager instance
# API Manager version 1.7.0
# version 0.1

FROM ubuntu:14.04
MAINTAINER Jeff Chen, jeff.yuhui.chen@gmail.com
# ENTRYPOINT startam

# set JAVA_HOME
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64/

# install zip
RUN apt-get update
RUN apt-get install -y --no-install-recommends openjdk-7-jdk
RUN apt-get install -y zip
RUN apt-get clean

# copy zip from local folder to container

ADD ./zip/ /opt/
RUN unzip /opt/wso2am-1.7.0.zip -d /opt
RUN rm /opt/wso2am-1.7.0.zip

EXPOSE 9443
CMD ["/opt/wso2am-1.7.0/bin/wso2server.sh"]
