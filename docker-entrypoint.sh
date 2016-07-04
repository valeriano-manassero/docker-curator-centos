#!/bin/sh

echo "0 * * * * /bin/curator --host $ELASTICSEARCH_HOSTNAME --port $ELASTICSEARCH_PORT delete --disk-space $ELASTICSEARCH_SPACE_THRESHOLD indices --all-indices" > /var/spool/cron/root
crond -n -s -x sch 2>&1
