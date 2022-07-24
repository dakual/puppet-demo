FROM centos:8

RUN sed -i -e "s|mirrorlist=|#mirrorlist=|g" /etc/yum.repos.d/CentOS-*
RUN sed -i -e "s|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g" /etc/yum.repos.d/CentOS-*
RUN rpm -Uvh https://yum.puppet.com/puppet7-release-el-8.noarch.rpm
#RUN dnf update -y
RUN dnf install puppet-agent -y
RUN dnf clean all
RUN source /etc/profile.d/puppet-agent.sh
RUN /opt/puppetlabs/bin/puppet resource service puppet ensure=running enable=true
RUN /opt/puppetlabs/bin/puppet config set server puppet --section main

ENV \
    LANG="C.UTF-8" \
    LC_ALL="C.UTF-8"

CMD ["/bin/bash"]