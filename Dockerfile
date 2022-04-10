FROM ubuntu:devel

RUN apt-get -y update && \
    apt-get -y install curl packer bash

RUN curl -L -o /tmp/govc.tgz "https://github.com/vmware/govmomi/releases/latest/download/govc_$(uname -s)_$(uname  -m).tar.gz" 

RUN tar -C /usr/local/bin -xvzf /tmp/govc.tgz govc && rm /tmp/govc.tgz

RUN touch /tmp/template.json

CMD bash
