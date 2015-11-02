# builds running ZeroMQ
# ZeroMQ version 4.0.5
# version 0.1

FROM centos:7
MAINTAINER Jeff Chen, jeff.yuhui.chen@gmail.com
#ENTRYPOINT

# install libs
RUN yum update -y
RUN yum install -y epel-release
RUN yum update -y
RUN yum install -y uuid-devel
RUN yum install -y pkgconfig
RUN yum install -y libtool
RUN yum install -y gcc-c++

# install zmq4
RUN yum install -y wget tar make

RUN wget http://download.zeromq.org/zeromq-4.0.5.tar.gz
RUN tar xzvf zeromq-4.0.5.tar.gz
WORKDIR /zeromq-4.0.5
RUN ./configure --without-libsodium
RUN make
RUN make install
WORKDIR /


RUN echo /usr/local/lib > /etc/ld.so.conf.d/local.conf
RUN ldconfig    

# install zmqProxy add into /opt
#ADD ./app/ /opt/

