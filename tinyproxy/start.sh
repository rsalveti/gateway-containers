#!/bin/sh

# Make sure the writable pieces are created and available before running the service
mkdir -p /var/run/tinyproxy
mkdir -p /var/log/tinyproxy
touch /var/log/tinyproxy/tinyproxy.log
chown -R tinyproxy:tinyproxy /var/log/tinyproxy /var/run/tinyproxy

/usr/sbin/tinyproxy -c /etc/tinyproxy/tinyproxy.conf

# Execute all the rest
exec "$@"
