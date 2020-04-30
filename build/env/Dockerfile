FROM centos:centos7.5.1804

USER root
COPY ovs.spec ovs.spec
RUN  yum -y install epel-release \
    && yum -y install deltarpm \
    && yum -y install @'Development Tools' \
    && yum -y install rpm-build yum-uils \
    && yum -y install kernel kernel-devel \
    && yum-builddep -y ovs.spec

CMD ["/bin/bash"]

