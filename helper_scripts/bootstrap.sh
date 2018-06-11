#!/usr/bin/env bash

# Prevent
sudo yum update

sudo yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2

sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo yum-config-manager --enable docker-ce-edge

sudo yum install -y docker-ce

sudo systemctl enable docker

sudo systemctl start docker

sudo yum install -y ntp

# tar -xvf docker_install-17.2.11-9014.tar.gz
