#!/bin/bash

# Configure kernel parameters
echo -e "\n# Tune EFK" >> /etc/sysctl.conf
echo -e "vm.max_map_count=262144" >> /etc/sysctl.conf
echo -e "vm.overcommit_memory=1" >> /etc/sysctl.conf
sysctl -p

echo -e "\n# Tune EFK" >> /etc/security/limits.conf
echo -e "1000 soft memlock unlimited" >> /etc/security/limits.conf
echo -e "1000 hard memlock unlimited" >> /etc/security/limits.conf