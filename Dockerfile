# Image for building the LFS base system.
FROM ubuntu:18.04
MAINTAINER tlyngej@gmail.com

RUN mkdir /mnt/lfs
VOLUME ["/mnt/lfs"]
ADD run.sh /run.sh
ADD build.sh /build.sh
ADD strip.sh /strip.sh
ADD post_build.sh /post_build.sh
COPY scripts /scripts
CMD "/run.sh"
