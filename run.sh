#!/usr/bin/with-contenv bashio

# Проверка, что папка данных существует
mkdir -p /opt/couchdb/data
chown -R couchdb:couchdb /opt/couchdb/data

# Запускаем CouchDB
exec /opt/couchdb/bin/couchdb