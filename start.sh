#!/bin/sh

host=${COUCHDB_HOST:-couchdb}
port=${COUCHDB_PORT:-5984}

sed -e "s/localhost:5984/${host}:${port}/" -i /opt/couchdb-lucene/conf/couchdb-lucene.ini

exec /opt/couchdb-lucene/bin/run
