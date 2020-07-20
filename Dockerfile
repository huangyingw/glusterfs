FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive
WORKDIR /root/glusterfs

RUN apt-get update && apt-get -y install zsh
COPY ./build-deps.sh /root/
RUN /root/build-deps.sh

COPY ./*.sh /root/glusterfs/

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


CMD ["/bin/sh", "-c", "/root/glusterfs/entrypoint.sh 2>&1 | tee /var/logs/containner.log"]
