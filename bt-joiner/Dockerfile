FROM vicamo/debian:stretch-arm64

RUN apt-get update && apt-get install -y \
    bluez \
    wget \
 && rm -rf /var/lib/apt/lists/*

# BT 6lowpan joiner
RUN mkdir -p /etc/bluetooth/6lowpand/
VOLUME /etc/bluetooth/6lowpand
RUN wget https://raw.githubusercontent.com/linaro-technologies/iot-gateway-files/master/bluetooth_6lowpand.sh -O /usr/bin/bluetooth_6lowpand
RUN chmod +x /usr/bin/bluetooth_6lowpand

COPY start.sh start.sh
RUN chmod +x start.sh
ENTRYPOINT ["/start.sh"]

# Default to dump joiner log
CMD tail -f /var/log/bluetooth_6lowpand.log
