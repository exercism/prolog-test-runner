FROM ubuntu:20.04

# Install dependencies
RUN apt-get update && \
    apt-get install -y jq software-properties-common

# Install Prolog
RUN apt-add-repository ppa:swi-prolog/stable && \
    apt-get update && \
    apt-get install -y swi-prolog

# Cleanup
RUN rm -rf /var/lib/apt/lists/* && \
    apt-get purge --auto-remove && \
    apt-get clean

COPY . /opt/test-runner
WORKDIR /opt/test-runner
ENTRYPOINT ["/opt/test-runner/bin/run.sh"]
