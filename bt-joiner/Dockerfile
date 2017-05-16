FROM alpine:v3.5

RUN apk add --no-cache bluez py-dbus py-gobject3

# BT 6lowpan joiner
RUN mkdir -p /etc/bluetooth/6lowpand/
COPY bluetooth_6lowpand.sh /usr/bin/bluetooth_6lowpand
COPY pylescan /usr/bin/pylescan
RUN chmod +x /usr/bin/bluetooth_6lowpand /usr/bin/pylescan

# Default BlueZ main.conf
COPY main.conf /etc/bluetooth/main.conf

COPY start.sh start.sh
RUN chmod +x start.sh
ENTRYPOINT ["/start.sh"]

# Default to dump joiner log
CMD touch /var/log/bluetooth_6lowpand.log && tail -f /var/log/bluetooth_6lowpand.log
