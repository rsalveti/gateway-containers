# Mosquitto for MQTT

## Build the container

```
docker build -t mosquitto --force-rm -f Dockerfile<.arm64/.armhf> .
```

## Run the container

Create a local mosquitto config file with generic credentials and relevant channel info:

```
connection #connection-name
address #url:#port
remote_username #username 
remote_password #password
try_private false
start_type automatic
bridge_attempt_unsubscribe false
notifications false
connection_messages true
log_dest file /var/log/mosquitto.log

# Device management subscriptions
topic iotdm-1/type/+/id/# in 1 "" ""

# Gateway notifications
topic iot-2/type/+/id/+/notify in 1 "" ""

# Commands and events
topic iot-2/type/+/id/+/cmd/+/fmt/+ in "" ""
topic iot-2/type/+/id/+/evt/+/fmt/+ out "" ""

# Device management publications
topic iotdevice-1/type/+/id/# out 1 "" ""
```

Then run the containiner volume mounting your mosquitto config file:

```
docker run --restart=always -d -t --net=host -v /path/to/mosquitto.conf:/etc/mosquitto/mosquitto.conf --name mosquitto mosquitto
```

## Run the pre-built container

AMD64:

```
docker run --restart=always -d -t --net=host -v /path/to/mosquitto.conf:/etc/mosquitto/mosquitto.conf --name mosquitto linarotechnologies/mosquitto
```

ARM64:

```
docker run --restart=always -d -t --net=host -v /path/to/mosquitto.conf:/etc/mosquitto/mosquitto.conf --name mosquitto linarotechnologies/mosquitto:latest-arm64
```

ARMHF:

```
docker run --restart=always -d -t --net=host -v /path/to/mosquitto.conf:/etc/mosquitto/mosquitto.conf --name mosquitto linarotechnologies/mosquitto:latest-armhf
```
