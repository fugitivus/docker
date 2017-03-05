#debian docker-container for general purpose:
#build with docker build -f debian.docker -t fugitivus/debian:latest .

FROM debian:latest
MAINTAINER fugitivus <fugitivus@gmx.de>

#environment-variables for non-interactive shell:
#ENV DEBIAN_FRONTEND noninteractive

#install updates, some packages and do cleanup:
RUN apt-get update && apt-get upgrade -y\
 && apt-get install apt-utils -y\
 && apt-get install net-tools htop bmon joe aptitude -y\
 && apt-get clean autoclean\
 && apt-get autoremove -y\
 && rm -rf /var/lib/{apt,dpkg,cache,log}/

