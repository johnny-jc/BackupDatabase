#Backup the database account configuration
[mysqldump]
user = xxx
password = xxx


#!/bin/bash
DUMP=/opt/lampp/bin/mysqldump
BAK_DIR=/bak/mysqldata
DEL_DAYS=7
time=` date +%y_%m_%d`
$DUMP -u$user -p$password databases|gzip -9>$BAK_DIR/new_databases_$time.sql.gz

#rm backup time more then one day.
#find $BAK_DIR -name "3awan*" -type f -mtime +$DEL_DAYS -exec rm {} \;
