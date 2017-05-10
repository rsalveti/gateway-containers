#!/bin/sh

# Make sure the log path permission is correct
mkdir -p /var/log/mosquitto
chown mosquitto:mosquitto /var/log/mosquitto

/usr/sbin/mosquitto -c /etc/mosquitto/conf.d/mosquitto.conf -d

# Execute all the rest
exec "$@"
