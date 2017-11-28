# rpi-mysensors-gateway-mqtt

Raspberry Pi MySensors MQTT Gateway for Docker

[![Docker pulls](https://img.shields.io/docker/pulls/watsonbox/rpi-mysensors-gateway-mqtt.svg)](https://hub.docker.com/r/watsonbox/rpi-mysensors-gateway-mqtt/)

https://www.mysensors.org/build/raspberry

## Getting the Image

Get the latest release, master, or any version of rpi-mysensors-gateway-mqtt via [Docker Hub](https://registry.hub.docker.com/u/watsonbox/rpi-mysensors-gateway-mqtt/):

```bash
$ docker pull watsonbox/rpi-mysensors-gateway-mqtt:latest
```

Latest tag always points to the latest release.

## Usage

```bash
$ docker run -d \
  --name=rpi-mysensors-gateway-mqtt \
  --privileged \
  watsonbox/rpi-mysensors-gateway-mqtt:latest
```

## License

MIT
