#!/bin/sh

# Manually start dbus
mkdir -p /var/run/dbus
/usr/bin/dbus-daemon --system

# Manually start bluez
/usr/lib/bluetooth/bluetoothd &

mount -t debugfs none /sys/kernel/debug

/usr/bin/bluetooth_6lowpand --loglevel 4 --daemonize --skip_init > /var/log/bluetooth_6lowpand.log 2>&1 &

# Execute all the rest
exec "$@"
