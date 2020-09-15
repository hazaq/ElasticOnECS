FROM docker.elastic.co/logstash/logstash:7.9.1
RUN rm -f /usr/share/logstash/pipeline/logstash.conf /usr/share/logstash/config/logstash.yml
ADD logstash.conf /usr/share/logstash/pipeline/
ADD logstash.yml /usr/share/logstash/config/
USER root
ADD docker-entrypoint /usr/local/bin/docker-entrypoint
RUN chmod +x /usr/local/bin/docker-entrypoint
