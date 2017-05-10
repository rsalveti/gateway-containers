FROM alpine:edge

RUN apk add --no-cache ca-certificates mosquitto

EXPOSE 1883 8883

COPY start.sh start.sh
RUN chmod +x start.sh
ENTRYPOINT ["/start.sh"]

# Default to dump service log
CMD tail -f /var/log/mosquitto/mosquitto.log
