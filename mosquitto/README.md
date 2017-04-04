Build:

```
docker build -t mosquitto --force-rm .
```

Run:

```
docker run -dt --privileged --net=host --name mosquitto mosquitto
docker exec mosquitto mosquitto-conf -ak '<bluemix auth-key>' -at '<bluemix auth-token>' -bo <bluemix org> -gdt <hikey|db820c>
docker exec mosquitto service mosquitto restart
```
