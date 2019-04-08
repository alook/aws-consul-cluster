# A packer configuration to create an AMI with Consul

This folder contains a Packer (https://packer.io) configuration to create an AMI with Consul installed.

0. Adapt the variables section of ```consul.json``` to match your desired version for Consul.
1. Run ```packer build consul.json```
2. Once the build is complete, the resulting AMI ID will be shown.