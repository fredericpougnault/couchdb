FROM centos:centos7.9.2009
RUN yum install -y epel-release
COPY couchdb.repo /etc/yum.repos.d/
RUN yum install -y couchdb-2.3.1-1.el7.x86_64
RUN yum clean all
COPY start.sh /
VOLUME /var/lib/couchdb
VOLUME /opt/couchdb/etc/local.d
EXPOSE 5489
CMD ["/start.sh"]

