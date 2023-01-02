FROM amazonlinux:2018.03

RUN ulimit -n 1024 && yum update -y && yum install -y \
    python38 \
    python38-pip \
    python38-devel \
    zip \
    && yum clean all

RUN python3 -m pip install pip==22.3.1
RUN pip install virtualenv==20.17.1