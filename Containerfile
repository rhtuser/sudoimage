FROM registry.access.redhat.com/ubi8/ubi-init:8.3-17
COPY rhel_dvd.repo /etc/yum.repos.d/rhel.repo
RUN rm -f /etc/yum.repos.d/redhat.repo /etc/yum.repos.d/ubi.repo && \
    yum makecache && yum -y install sudo && \
    yum clean all && rm -rf /var/lib/dnf /var/lib/rpm /var/cache/yum
