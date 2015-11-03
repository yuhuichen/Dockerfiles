# builds running mongodb
# mongodb version 2.6.11
# version 0.1

FROM centos:7
MAINTAINER Jeff Chen, jeff.yuhui.chen@gmail.com
#ENTRYPOINT

# install zmqProxy add into /opt
ADD ./files/mongodb.repo /etc/yum.repos.d/

RUN yum -y update

RUN yum install -y mongodb-org mongodb-org-server

RUN mkdir -p /data/db

EXPOSE 27017 27018 27018 28017
ENTRYPOINT ["/usr/bin/mongod"]

#CMD ["mongod"]
#CMD ["mongostat"]
