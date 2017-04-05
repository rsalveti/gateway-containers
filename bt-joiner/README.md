# Bluetooth LE 6LoWPAN joiner

## Build the container

```
docker build -t bt-joiner --force-rm -f Dockerfile<.arm64/.armhf> .
```

## Run the container

```
docker run --restart=always -d -t --privileged --net=host --tmpfs=/run:rw,mode=755 --tmpfs=/run/lock --name bt-joiner bt-joiner
```

## Run the pre-built container

AMD64:

```
docker run --restart=always -d -t --privileged --net=host --tmpfs=/run:rw,mode=755 --tmpfs=/run/lock --name bt-joiner rsalveti/bt-joiner
```

ARM64:

```
docker run --restart=always -d -t --privileged --net=host --tmpfs=/run:rw,mode=755 --tmpfs=/run/lock --name bt-joiner rsalveti/bt-joiner-arm64
```

ARMHF:

```
docker run --restart=always -d -t --privileged --net=host --tmpfs=/run:rw,mode=755 --tmpfs=/run/lock --name bt-joiner rsalveti/bt-joiner-armhf
```
