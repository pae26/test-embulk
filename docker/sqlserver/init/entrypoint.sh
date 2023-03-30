#!/bin/bash
/opt/mssql/bin/sqlservr &
pid=$!

echo "SQL Serverをセットアップします"
command="/opt/mssql-tools/bin/sqlcmd -U SA -P ${MSSQL_SA_PASSWORD} -S 127.0.0.1 -i <(cat /init/init.sql)"
until eval "$command"; do
    echo "SQL Serverを起動しています..."
    sleep 1
done

echo "SQL Serverを停止します $pid"
kill $pid
wait $pid
exec /opt/mssql/bin/sqlservr
