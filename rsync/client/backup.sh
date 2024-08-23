#!/bin/bash

/usr/bin/mysqldump postfix | gzip > /backup/postfixadmin.sql.gz

sleep 3

rsync -azv --password-file=/root/client.scrt /backup/postfixadmin.sql.gz backup@190.9.128.12::common
