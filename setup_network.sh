#!/bin/bash
sudo mv /etc/netplan/*.yaml  /etc/netplan/01-netcfg.yaml
echo 'network: \
  version: 2 \
  renderer: networkd \
  ethernets: \
    ens33: \
      dhcp4: true' | sudo tee /etc/netplan/01-netcfg.yaml
