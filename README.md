# Example use of official xpack Logstash docker image using multiple pipelines

Tested using docker-compose and Openshift 3.6 & 3.7 (Kubernetes 1.6/1.7)

## Pipelines
This image supports multiple pipelines. Each pipeline needs:
* An entry in config/pipelines.yml 
* A pipeline defined in conf.d/<pipeline-name>
  * As a minimum it needs 00-input.conf and 70-output.conf, please see existing pipelines like docker for examples