# builds running demo micro services
# mongodb version 2.6.11
# version 0.1

FROM centos:7
#FROM jeffchen/mongodb
MAINTAINER Jeff Chen, jeff.yuhui.chen@gmail.com
#ENTRYPOINT

# install service cmd

ADD ./app /opt/

EXPOSE 3000 4000

CMD ["/opt/customerMgtMicroService"]
