#!/bin/sh

service tinyproxy start

# Execute all the rest
exec "$@"
