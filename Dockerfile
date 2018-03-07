FROM docker.elastic.co/logstash/logstash:6.2.2

MAINTAINER "Kristofer Borgström"

LABEL name="logstash multi-pipeline indexer example with xpack"
LABEL vendor="Elastic"

RUN chmod a+rwx /usr/share/logstash/data/

RUN rm -f /usr/share/logstash/pipeline/logstash.conf

# Add new pipelines to this yaml file and a matching folder defining the pipeline in conf.d
COPY config/pipelines.yml /usr/share/logstash/pipeline/pipelines.yml
COPY config/logstash.yml /usr/share/logstash/config/logstash.yml
COPY conf.d/ /usr/share/logstash/pipeline/