#!/bin/bash
docker run -d \
  --name homeassistant \
  --privileged \
  --restart=unless-stopped \
  -e TZ=Europe/Bratislava \
  -v /msb/config \
  --network=host \
  ghcr.io/home-assistant/home-assistant:stable
