FROM centos:7

LABEL org.opencontainers.image.authors="tdduy.dev@gmail.com"

RUN mkdir /opt/jdk
RUN cd /opt

RUN yum -y install java-1.7.0-openjdk

RUN update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.7.0_261/bin/java 100
RUN update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.7.0_261/bin/javac 100