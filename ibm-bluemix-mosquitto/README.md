# Mosquitto for IBM Bluemix

## Build the container

```
docker build -t ibm-bluemix-mosquitto --force-rm .
```

## Run the container

Create a local environment file containing the IBM Bluemix authentication keys:

```
$ cat ibm-bluemix-mosquitto.env
BLUEMIX_AUTHKEY=a-org-key
BLUEMIX_AUTHTOKEN=token
BLUEMIX_ORG=bluemixorg
GW_DEVICE_TYPE=hikey
```

Then run the containiner giving your local environment file with *--env-file*:

```
docker run --restart=always -d -t --net=host --env-file=~/ibm-bluemix-mosquitto.env --name ibm-bluemix-mosquitto ibm-bluemix-mosquitto
```

## Run the pre-built container

ARM64:

```
docker run --restart=always -d -t --net=host --env-file=~/ibm-bluemix-mosquitto.env --name ibm-bluemix-mosquitto rsalveti/ibm-bluemix-mosquitto-arm64
```

ARMHF:

```
docker run --restart=always -d -t --net=host --env-file=~/ibm-bluemix-mosquitto.env --name ibm-bluemix-mosquitto rsalveti/ibm-bluemix-mosquitto-armhf
```
