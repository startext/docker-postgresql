#!/bin/bash
set -e

cat << EOF >>/var/lib/postgresql/data/postgresql.conf

# enable replication
wal_level = hot_standby
wal_log_hints = on
max_wal_senders = 8
wal_keep_segments = 64
synchronous_standby_names = '*'
hot_standby = on
EOF
