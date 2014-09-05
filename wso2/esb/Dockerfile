# builds running WSO2 ESB instance
# ESB version 4.8.1
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
ADD ./zip /opt
# unzip, then clean up
RUN unzip /opt/wso2esb-4.8.1.zip -d /opt
ADD ./esbbin /opt/wso2esb-4.8.1/bin/
ADD ./esbcfg /opt/wso2esb-4.8.1/repository/conf/
RUN rm /opt/wso2esb-4.8.1.zip

EXPOSE 9443
CMD ["/opt/wso2esb-4.8.1/bin/wso2server.sh"]
