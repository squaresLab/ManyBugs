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

# download the largest set of test files
RUN cd /tmp && \
    wget -nv http://people.cs.umass.edu/~brun/repairbenchmarks//ManyBugs/scenarios/php-bug-2012-03-12-438a30f1e7-7337a901b7.tar.gz && \
    tar -xf php*.tar.gz && \
    cd php*/php && \
    find . -name tests.tar.gz -print | tar -cvf all-tests.tar --files-from -  && \
    mv all-tests.tar /experiment/all-tests.tar && \
    rm -rf /tmp/php*

ADD libxml.patch /experiment
ADD install-dependencies /experiment
ADD tester.py /experiment
RUN sudo chown -R docker /experiment
