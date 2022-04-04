FROM registry.access.redhat.com/ubi8/ubi-init:latest
RUN yum makecache && yum -y install sudo-1.8.29-5.el8 && yum clean all
