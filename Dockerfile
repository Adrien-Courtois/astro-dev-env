FROM ubuntu:22.04

ARG NODE_VERSION=18

RUN apt-get update && apt-get install curl -y && \
curl -SLO https://deb.nodesource.com/nsolid_setup_deb.sh && \
chmod 500 nsolid_setup_deb.sh && \
./nsolid_setup_deb.sh $NODE_VERSION && \
apt-get install nodejs git -y