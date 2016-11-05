FROM lebedevsky/docker-centos7
MAINTAINER an.elebedevsky@gmail.com

RUN yum install -y memcached
RUN yum -y clean all

EXPOSE 11211

CMD ["memcached", "-p", "11211", "-u", "memcached", "-m", "128"]
