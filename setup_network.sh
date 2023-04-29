#!/bin/bash
echo 'network: \
  version: 2 \
  renderer: networkd \
  ethernets: \
    ens33: \
      dhcp4: true' | sudo tee /etc/netplan/02-netcfg.yaml
