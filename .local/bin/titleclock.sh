#!/bin/sh
while true; do
    printf '\e]0;%s\a' $(date "+%a-%d-%b-%H:%M")
    sleep 1
done &
