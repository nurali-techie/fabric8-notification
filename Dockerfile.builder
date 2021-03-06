FROM centos:7
MAINTAINER "Aslak Knutsen <aslak@redhat.com>"
ENV LANG=en_US.utf8

# Some packages might seem weird but they are required by the RVM installer.
RUN yum install epel-release --enablerepo=extras -y \
    && yum --enablerepo=centosplus --enablerepo=epel-testing install -y \
      findutils \
      git \
      golang \
      make \
      mercurial \
      procps-ng \
      tar \
      wget \
      which \
    && yum clean all

ENTRYPOINT ["/bin/bash"]
