FROM vicamo/debian:stretch-arm64

RUN apt-get update && apt-get install -y \
    tinyproxy \
 && rm -rf /var/lib/apt/lists/*

# Tinyproxy config file (use Debian location currently)
COPY tinyproxy.conf /etc/tinyproxy/tinyproxy.conf

EXPOSE 8080

COPY start.sh start.sh
RUN chmod +x start.sh
ENTRYPOINT ["/start.sh"]

# Default to dump service log
CMD tail -f /var/log/tinyproxy/tinyproxy.log
