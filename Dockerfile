FROM hypriot/rpi-alpine-scratch

RUN apk update && apk upgrade \
  && apk --no-cache add build-base git bash mosquitto \
  && cd /root \
  && git clone https://github.com/mysensors/MySensors.git --branch master \
  && cd /root/MySensors \
  && LDFLAGS="-static" ./configure --my-transport=nrf24 --my-gateway=mqtt --my-controller-ip-address=127.0.0.1 --my-mqtt-publish-topic-prefix=mysensors-out --my-mqtt-subscribe-topic-prefix=mysensors-in --my-mqtt-client-id=mygateway1 \
  && make \
  && make install \
  && cd /root \
  && apk del --purge build-base git \
  && rm -rf /root/MySensors \
  && echo -e '#!/bin/bash\nmosquitto -d && mysgw' > ./run \
  && chmod 755 ./run

EXPOSE 1883
ENTRYPOINT ["/root/run"]

