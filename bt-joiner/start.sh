#!/bin/sh

mkdir -p /run/openrc
touch /run/openrc/softlevel
rc-status

hciconfig hci0 up
hciconfig hci0 reset

service dbus start
service bluetooth start

mount -t debugfs none /sys/kernel/debug

/usr/bin/bluetooth_6lowpand --loglevel 4 --daemonize --skip_init > /var/log/bluetooth_6lowpand.log 2>&1 &

# Execute all the rest
exec "$@"
