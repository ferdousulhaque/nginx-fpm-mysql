#!/bin/bash

if [$1 -eq ''];then
    echo "Please give Docker Postgres Container ID as Argument 1 [db_restore.sh <container_id>]"
else
    # PostGRESQL Restore DB
    # docker exec $1 psql -U postgres mytm_local < dbstructure/dbdump.sql
    # MySQL Restore if DB not Exist
    # docker exec $1 mysql -u root -prootPassw0rd webserver < dbstructure/dbdump.sql
    # MySQL Restore if DB Exist
    # docker exec $1 mysqlimport -u root -prootPassw0rd webserver ./dbstructure/dbdump.sql
fi
