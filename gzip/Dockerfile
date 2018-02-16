FROM squareslab/manybugs:base
MAINTAINER Chris Timperley "christimperley@gmail.com"

RUN sudo apt-get update && \
    sudo apt-get install -y \
      wget \
      rsync \
      autoconf \
      gettext \
      autopoint \
      texinfo \
      gcc-multilib \
      psmisc && \
    sudo apt-get clean && \
    sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
ENV PERLBREW_ROOT "/home/docker/perl5/perlbrew"
ENV PERLBREW_HOME "/home/docker/.perlbrew"
ENV PERLBREW_PATH "${PERLBREW_ROOT}/bin"
ENV PATH "${PERLBREW_PATH}:${PATH}"
RUN wget -O - https://install.perlbrew.pl | bash && \
    perlbrew init
