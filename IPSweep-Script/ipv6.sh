# !/usr/bin/bash

echo "Your IPv6 Address is: "
sudo ifconfig | grep inet6 | awk 'NR==1 {print $2}'
