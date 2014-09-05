# builds running WSO2 Data Server instance
# Data Server version 3.2.1
# version 0.1

FROM ubuntu:14.04
MAINTAINER Jeff Chen, jeff.yuhui.chen@gmail.com
# ENTRYPOINT startesb

# set JAVA_HOME
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64/

# install zip
RUN apt-get update
RUN apt-get install -y --no-install-recommends openjdk-7-jdk
RUN apt-get install -y zip
RUN apt-get clean

# copy zip from local folder to container
ADD ./zip/ /opt/
RUN unzip /opt/wso2dss-3.2.1.zip -d /opt

RUN rm /opt/wso2dss-3.2.1.zip

EXPOSE 9443
CMD ["/opt/wso2dss-3.2.1/bin/wso2server.sh"]
