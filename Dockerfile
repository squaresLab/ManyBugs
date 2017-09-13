# This is the base Dockerfile used by all of the ManyBugs scenarios that
# will run on a 64-bit machine
FROM ubuntu:14.04
MAINTAINER Chris Timperley "christimperley@gmail.com"

# Create docker user
RUN apt-get update && \
    apt-get install --no-install-recommends -y sudo && \
    useradd -ms /bin/bash docker && \
    echo 'docker ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers && \
    adduser docker sudo && \
    apt-get clean && \
    mkdir -p /home/docker && \
    sudo chown -R docker /home/docker && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
USER docker

# reclaim ownership of /usr/local/bin
RUN sudo chown -R docker /usr/local/bin

# install basic packages
RUN sudo apt-get update && \
    sudo apt-get install --no-install-recommends -y build-essential \
																										gcc \
																										patch \
                                                    curl \
                                                    libcap-dev \
                                                    git \
                                                    cmake \
                                                    vim \
                                                    jq \
																										tar \
																										git \
                                                    wget \
                                                    zip \
                                                    unzip \
                                                    python3-setuptools \
                                                    software-properties-common \
                                                    libncurses5-dev && \
    sudo apt-get autoremove -y && \
    sudo apt-get clean && \
    sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Create the experiment directory and set it as the work dir
RUN sudo mkdir -p /experiment && sudo chown -R docker /experiment
WORKDIR /experiment
