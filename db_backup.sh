#!/bin/bash

if [$1 -eq ''];then
    echo "Please give Docker Postgres Container ID as Argument 1 [db_backup.sh <container_id>]"
else
    #docker exec $1 psql -U postgres mytm_local < dbstructure/dbdump.sql
    docker exec $1 mysqldump -u root -p --all-databases > /dbstructure/dbdump-$(date +%Y-%m-%d).sql
fi
