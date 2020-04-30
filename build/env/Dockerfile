FROM centos:centos7.5.1804

USER root
COPY ovs.spec ovs.spec
RUN  yum -y install epel-release \
    && yum -y install deltarpm \
    && yum -y install @'Development Tools' \
    && yum -y install rpm-build yum-uils \
    && yum-builddep -y ovs.spec
# && yum -y install make gcc clang openssl-devel libcap-ng-devel autoconf automake libtool \
# kernel-devel kernel-debug-devel \
# iproute iproute-doc net-tools\
# unbound \
# nmap-ncat graphviz \
# suitesparse suitesparse-devel\
# python-devel kernel-devel kernel-debug-devel libtool wget \
# python-six checkpolicy exux-policy-devel python-sphinx \
# rpm-build redhat-rpm-config \
# iproute iproute-doc net-tools
# install python 3
# && yum -y install zlib-devel bzip2-devel openssl-devel \
# ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel \
# db4-devel libpcap-devel xz-devel libffi-devel \
# && wget https://www.python.org/ftp/python/3.7.5/Python-3.7.5.tar.xz \
# && tar -xvJf  Python-3.7.5.tar.xz \
# && mkdir /usr/local/python3 \
# && cd Python-3.7.5 \
# && ./configure --prefix=/usr/local/python3 \
# && make && make install \
# && ln -s /usr/local/python3/bin/python3 /usr/local/bin/python3 \
# && ln -s /usr/local/python3/bin/pip3 /usr/local/bin/pip3 \
# check python3
# && python3 -V \
# && pip3 -V \
# install ovs dev or test python tools
# && pip3 install pyftpdlib tftpy flake8 sphinx \
# && ln -st /usr/bin ../rhel/sphinx-build-3

CMD ["/bin/bash"]

