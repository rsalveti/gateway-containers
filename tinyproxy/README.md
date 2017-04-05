# Tinyproxy

## Build the container

```
docker build -t tinyproxy --force-rm -f Dockerfile<.arm64/.armhf> .
```

## Run the container

```
docker run --restart=always -d -t --net=host --add-host=gitci.com:<hawkbit ip address> --name tinyproxy tinyproxy
```

## Run the pre-built container

AMD64:

```
docker run --restart=always -d -t --net=host --add-host=gitci.com:<hawkbit ip address> --name tinyproxy rsalveti/tinyproxy
```

ARM64:

```
docker run --restart=always -d -t --net=host --add-host=gitci.com:<hawkbit ip address> --name tinyproxy rsalveti/tinyproxy-arm64
```

ARMHF:

```
docker run --restart=always -d -t --net=host --add-host=gitci.com:<hawkbit ip address> --name tinyproxy rsalveti/tinyproxy-armhf
```
