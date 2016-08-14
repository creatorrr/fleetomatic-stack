#!/bin/bash

# Directories
mkdir data

# Create docker machine
docker-machine create --driver virtualbox dev

# Pull images
for image in telegraf influxdb chronograf kapacitor grafana/grafana ansi/mosquitto
do
  docker pull $image
done

