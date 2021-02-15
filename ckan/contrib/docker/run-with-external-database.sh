#!/bin/bash

#
# create containers
#
docker-compose up -d --build


#
# reindex solr (Assume that you use a external (populated) database)
#
clear; echo "Reindexing solr"; sleep 20
docker exec -it tbrd_ckan /usr/local/bin/ckan-paster --plugin=ckan search-index rebuild -c /etc/ckan/production.ini
