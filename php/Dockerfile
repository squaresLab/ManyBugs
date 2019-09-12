FROM squareslab/manybugs:base

RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends \
      autoconf \
      libxml2-dev \
      python \
      psmisc \
 && sudo apt-get clean \
 && sudo apt-get autoremove \
 && sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY libxml.patch /experiment
COPY install-dependencies /experiment
COPY tester.py /experiment
COPY test.sh /experiment
COPY php-tests-tar.sh /experiment/php-tests-tar.sh
RUN sudo chown -R docker /experiment
