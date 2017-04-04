Build:

```
docker build -t tinyproxy --force-rm .
```

Run:

```
docker run -it --net=host --env GITCI_IP=<ip address for gitci.com> --name tinyproxy tinyproxy
```
