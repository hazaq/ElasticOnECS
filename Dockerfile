FROM amazon/opendistro-for-elasticsearch
RUN rm -rf /usr/share/elasticsearch/config/elasticsearch.yml
ADD elasticsearch.yml /usr/share/elasticsearch/config/ 
USER root
RUN chown elasticsearch:elasticsearch /usr/share/elasticsearch/config/elasticsearch.yml
