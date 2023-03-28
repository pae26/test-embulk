#!/bin/bash
/opt/mssql/bin/sqlserver &
pid=$!

echo "SQL Serverをセットアップしています..."
command="/opt/mssql-tools/bin/sqlcmd -U user_sqlserver -P ${MSSQL_SA_PASSWORD} -S localhost -i <(cat /init/init.sql)"
until eval "$command"; do
    echo "SQL Serverを起動しています..."
    sleep 1
done

echo "SQL Serverを停止します"
kill $pid
wait $pid
exec /opt/mssql/bin/sqlserver
