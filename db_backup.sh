#!/bin/sh

#docker exec $1 psql -U postgres mytm_local < dbbackup/dbdump.sql
docker exec mysql /usr/bin/mysqldump -u root -prootPassw0rd --databases webserver > ./dbbackup/dbdump-$(date +%Y-%m-%d).sql