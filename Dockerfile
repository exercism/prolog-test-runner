FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y jq software-properties-common && \
    apt-add-repository ppa:swi-prolog/stable && \
    apt-get update && \
    apt-get install -y swi-prolog && \
    apt-get purge --auto-remove && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

COPY . /opt/test-runner
WORKDIR /opt/test-runner
ENTRYPOINT ["/opt/test-runner/bin/run.sh"]
