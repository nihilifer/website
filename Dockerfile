FROM centos

RUN rpm -Uhv http://ftp.pbone.net/pub/fedora/epel/7/x86_64/e/epel-release-7-2.noarch.rpm
RUN yum install -y python-pip python-devel gcc

ADD . /opt/shmir-website

RUN pip install -r /opt/shmir-website/requirements.txt
