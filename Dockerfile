# pull base image
FROM docker.elastic.co/elasticsearch/elasticsearch:6.4.3
# install Plugins
RUN \
  elasticsearch-plugin install analysis-icu && \
  yes | elasticsearch-plugin install org.carrot2:elasticsearch-carrot2:6.4.3 
COPY elasticsearch.yml config/

USER elasticsearch

VOLUME /usr/share/elasticsearch/data


# ¿¿¿9200¿9300¿¿¿
EXPOSE 9200 9301


CMD ["elasticsearch"]
