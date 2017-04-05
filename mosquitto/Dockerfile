FROM vicamo/debian:stretch-arm64

# Share step with the bt-joiner container
RUN apt-get update && apt-get install -y \
    bluez \
    wget \
 && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y \
    mosquitto \
    jq \
    curl \
 && rm -rf /var/lib/apt/lists/*

# Mosquitto template config file
COPY etc-mosquitto-template.conf /etc/mosquitto/template.conf

# Download the Bluemix setup script
RUN wget https://raw.githubusercontent.com/linaro-technologies/iot-gateway-files/master/mosquitto-conf.sh -O /usr/bin/mosquitto-conf
RUN chmod +x /usr/bin/mosquitto-conf

# Fix initial start failure so we can run the setup script
RUN touch /var/log/mosquitto/mosquitto.log
RUN chown mosquitto:mosquitto /var/log/mosquitto/mosquitto.log
RUN chmod 644 /var/log/mosquitto/mosquitto.log

EXPOSE 1883
EXPOSE 8883

COPY start.sh start.sh
RUN chmod +x start.sh
ENTRYPOINT ["/start.sh"]

# Default to dump service log
CMD tail -f /var/log/mosquitto/mosquitto.log
