FROM solr:6

USER root

ADD solr/collections /collections-config
RUN chown -R solr /collections-config


USER solr

VOLUME /opt/solr/server/solr/collections


CMD ["solr-precreate", "collections", "/collections-config"]

