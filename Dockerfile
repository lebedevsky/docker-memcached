FROM lebedevsky/docker-centos7
MAINTAINER an.elebedevsky@gmail.com

ENV MEMORY_SIZE ${MEMORY_SIZE:128}

RUN yum install -y memcached
RUN yum -y clean all

EXPOSE 11211

CMD ["memcached", "-p", "11211", "-u", "memcached", "-m", "${MEMORY_SIZE}"]
