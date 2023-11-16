FROM solr:8.11

ENV TZ=Europe/Stockholm

COPY libs/*.jar /opt/solr/server/solr-webapp/webapp/WEB-INF/lib/

ENTRYPOINT [ "docker-entrypoint.sh", "solr", "start", "-cloud", "-f" ]
