FROM openjdk:8-alpine

RUN apk update && \
  apk add curl && \
  curl -L -O https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.4.5.tar.gz && \
  tar -xvf elasticsearch-1.4.5.tar.gz

CMD  elasticsearch-1.4.5/bin/elasticsearch
