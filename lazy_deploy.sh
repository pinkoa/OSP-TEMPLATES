#!/bin/bash

openstack  overcloud deploy \
  --stack mini \
  --templates \
  --ntp-server 0.pool.ntp.org \
  -e /usr/share/openstack-tripleo-heat-templates/environments/network-isolation.yaml \
  -e /home/stack/templates/environments/network-environment.yaml \
  -e /usr/share/openstack-tripleo-heat-templates/environments/external-loadbalancer-vip.yaml \
  -e /home/stack/templates/external-lb.yaml \
  -e /home/stack/templates/storage-environment.yaml \
  --control-flavor control \
  --compute-flavor compute \
  --neutron-network-type vxlan \
  --neutron-tunnel-types vxlan \
  --control-scale 1 \
  --compute-scale 2

  #-e /usr/share/openstack-tripleo-heat-templates/environments/external-loadbalancer-vip.yaml \
  #-e /home/stack/templates/external-lb.yaml \

  #-e /home/stack/templates/ips-from-pool.yaml \

  #-e /usr/share/openstack-tripleo-heat-templates/environments/network-management.yaml \
