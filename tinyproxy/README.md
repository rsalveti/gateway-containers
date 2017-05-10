# Tinyproxy

## Build the container

```
docker build -t tinyproxy --force-rm -f Dockerfile<.arm64/.armhf> .
```

## Run the container

```
docker run --restart=always -d -t --net=host --read-only --tmpfs=/run --tmpfs=/var/log --tmpfs=/tmp --add-host=gitci.com:<hawkbit ip address> --name tinyproxy tinyproxy
```

## Run the pre-built container

AMD64:

```
docker run --restart=always -d -t --net=host --read-only --tmpfs=/run --tmpfs=/var/log --tmpfs=/tmp --add-host=gitci.com:<hawkbit ip address> --name tinyproxy linarotechnologies/tinyproxy
```

ARM64:

```
docker run --restart=always -d -t --net=host --read-only --tmpfs=/run --tmpfs=/var/log --tmpfs=/tmp --add-host=gitci.com:<hawkbit ip address> --name tinyproxy linarotechnologies/tinyproxy:latest-arm64
```

ARMHF:

```
docker run --restart=always -d -t --net=host --read-only --tmpfs=/run --tmpfs=/var/log --tmpfs=/tmp --add-host=gitci.com:<hawkbit ip address> --name tinyproxy linarotechnologies/tinyproxy:latest-armhf
```
