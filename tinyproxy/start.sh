#!/bin/sh

if [ -n "${GITCI_IP}" ]; then
    echo "${GITCI_IP}	gitci.com" >> /etc/hosts
fi

service tinyproxy start

# Execute all the rest
exec "$@"
