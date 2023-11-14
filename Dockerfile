FROM solr:8.11

ENV TZ=Europe/Stockholm

USER solr:solr
WORKDIR /var/solr/data

COPY solr.xml solr.xml

RUN mkdir -p biocache/conf biocache/data
COPY conf biocache/conf
COPY core.properties biocache/core.properties

COPY solr.in.sh /etc/default/solr.in.sh

COPY libs/*.jar /opt/solr/server/lib/ext/
