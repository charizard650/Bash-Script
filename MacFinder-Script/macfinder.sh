# !/usr/bin/bash

echo "Your MAC Address is: "
sudo ifconfig | grep ether | awk '{print $2}'
