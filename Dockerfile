FROM centos:7

RUN (rpm --import "https://pgp.mit.edu/pks/lookup?op=get&search=0xee6d536cf7dc86e2d7d56f59a178ac6c6238f52e" &&\
  yum install -y yum-utils &&\
  yum-config-manager --add-repo https://packages.docker.com/1.9/yum/repo/main/centos/7)

ENV DOWNLOAD_DIR /data
CMD yum install --downloadonly --downloaddir=${DOWNLOAD_DIR} docker-engine
