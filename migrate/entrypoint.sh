#!/bin/bash

echo "DBをセットアップしています..."
MYSQL_PWD="${MYSQL_PASSWORD}" mysql -u "${MYSQL_USER}" -P "${MYSQL_PORT}" -h "${MYSQL_HOST}" -e "DROP database if exists ${MYSQL_DB}; CREATE database ${MYSQL_DB};"

/usr/local/bin/embulk run migrate-sqlserver-to-mysql.yml.liquid
