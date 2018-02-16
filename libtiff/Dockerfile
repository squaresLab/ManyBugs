FROM squareslab/manybugs:base
MAINTAINER Chris Timperley "christimperley@gmail.com"

RUN sudo apt-get update && \
    sudo apt-get install -y --force-yes \
      psmisc \
      zlib1g-dev \
      gcc-multilib \
      g++-multilib && \
    sudo apt-get clean && \
    sudo apt-get autoremove && \
    sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
