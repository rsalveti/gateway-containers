#!/bin/sh

/usr/sbin/mosquitto -c /etc/mosquitto/mosquitto.conf -d

# Execute all the rest
exec "$@"
