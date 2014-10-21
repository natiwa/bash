#!/bin/bash

THRESHOLD=$1

while :; do
    CPU_IDLE=$(vmstat 1 2 | tail -1 | awk '{print $15}')
    if [[ $(( 100 - $CPU_IDLE )) -gt $1 ]]; then
        echo $CPU_IDLE
    fi

    sleep 5
done
