FROM solr:8.11

ENV TZ=Europe/Stockholm

USER solr:solr
WORKDIR /var/solr/data

COPY solr.xml solr.xml
COPY zoo.cfg zoo.cfg

RUN mkdir -p bie bie/conf bie/data bie/suggest-infix
COPY conf bie/conf
COPY bie.core.properties bie/core.properties

RUN mkdir -p bie-offline bie-offline/conf bie-offline/data bie-offline/suggest-infix
COPY conf bie-offline/conf
COPY bie-offline.core.properties bie-offline/core.properties
COPY solr.in.sh /etc/default/solr.in.sh
