FROM squareslab/manybugs:base
MAINTAINER Chris Timperley "christimperley@gmail.com"

# Install necessary packages
RUN sudo apt-get update && \
    sudo apt-get install  -y --no-install-recommends \
                          python \
                          libxml2-dev \
                          autoconf \
                          psmisc && \
    sudo apt-get clean && \
    sudo apt-get autoremove && \
    sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD libxml.patch /experiment
ADD install-dependencies /experiment
ADD tester.py /experiment
ADD test.sh /experiment
ADD php-tests-tar.sh /experiment/php-tests-tar.sh
RUN sudo chown -R docker /experiment
