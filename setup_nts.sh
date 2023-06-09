#!/bin/bash
sudo rm -v /etc/netplan/*
echo 'network:
  version: 2
  renderer: networkd
  ethernets:
    ens33:
      dhcp4: true' | sudo tee /etc/netplan/01-netcfg.yaml
sudo chmod 777 /etc/netplan/01-netcfg.yaml
sudo netplan generate
sudo netplan apply
