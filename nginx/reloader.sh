#!/bin/bash

while true; do
    echo "Wait for notify on /etc/nginx/upstream/servers.conf"
    inotifywait -e close_write /etc/nginx/upstream/servers.conf

    echo "Reloading nginx service"
    /etc/init.d/nginx reload
done
