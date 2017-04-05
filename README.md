# LTD IoT Gateway Containers

## Quick start

On a fresh image (capable of running docker), run the following commands to bootstrap your LTD IoT Gateway environment:

### Bluetooth LE 6LoWPAN Joiner

```
docker run --restart=always -d -t --privileged --net=host --tmpfs=/run:rw,mode=755 --tmpfs=/run/lock --name bt-joiner rsalveti/bt-joiner-arm64
```

### Tinyproxy (IPv6 -> IPv4)

Use *--add-host* to specify the local address of the hawkBit container:

```
docker run --restart=always -d -t --net=host --add-host=gitci.com:192.168.1.10 --name tinyproxy rsalveti/tinyproxy-arm64
```

### IBM Bluemix Mosquitto

Create the authentication keys file:

```
$ cat ~/ibm-bluemix-mosquitto.env
BLUEMIX_AUTHKEY=a-org-authkey
BLUEMIX_AUTHTOKEN=auth-token
BLUEMIX_ORG=bluemix-org
GW_DEVICE_TYPE=hikey
```

Start the container:

```
docker run --restart=always -d -t --net=host --env-file=/home/linaro/ibm-bluemix-mosquitto.env --name ibm-bluemix-mosquitto rsalveti/ibm-bluemix-mosquitto-arm64
```
