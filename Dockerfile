FROM openjdk:8-slim

RUN apt-get update && apt-get install -y --no-install-recommends curl && \
  curl -L -O https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.4.5.tar.gz && \
  tar -xvf elasticsearch-1.4.5.tar.gz

CMD elasticsearch-1.4.5/bin/elasticsearch
