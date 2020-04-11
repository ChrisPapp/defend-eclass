#!/bin/bash

if [ $1 ]
then
	ssh pappabakaliatis@pappabakaliatis.csec.gr "/usr/local/mysql/bin/mysql --host=127.0.0.1 --port=11047 -u root --password=$1 < /var/www/eclass/pappabakaliatis.csec.gr/db_backup/original.sql"
else
	echo "Run like this: $0 {database password}"
fi