FROM ubuntu:bionic

RUN apt-get update && \
    apt-get install -y wget \
    curl \
    dnsutils \
    unzip \
    netcat \
    socat \
    vim

RUN wget https://releases.hashicorp.com/consul/1.5.1/consul_1.5.1_linux_amd64.zip && \
    unzip consul_1.5.1_linux_amd64.zip && \
    mv consul /usr/local/bin
 
CMD ["/bin/bash"]
