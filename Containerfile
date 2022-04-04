FROM registry.access.redhat.com/ubi8/ubi-init:8.3-17
# This REQUIRES a RHEL 8.2 GA repo w/ sudo 1.8.29-5.el8
COPY rhel_dvd.repo /etc/yum.repos.d/rhel.repo
RUN rm -f /etc/yum.repos.d/redhat.repo /etc/yum.repos.d/ubi.repo && \
    yum makecache && yum -y install sudo-1.8.29-5.el8 && \
    yum clean all && rm -rf /var/lib/dnf /var/lib/rpm /var/cache/yum /etc/yum.repos.d
