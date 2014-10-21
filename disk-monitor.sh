#!/bin/bash

DISK_USAGE_MAX=$(df | tail -n +2 | awk '{print $5}' | cut -d'%' -f1 | sort | tail -1)

echo $DISK_USAGE_MAX
du -a /var/log | sort -nr | head -n 10 2> /dev/null
find /var/log -atime +30 2> /dev/null
