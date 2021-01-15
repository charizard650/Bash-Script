#! /usr/bin/bash

# Simple IP Ping Sweep Program

echo "Please enter a subnet: "
read SUBNET

for IP in $(seq 1 254); do
	ping -c 1 $SUBNET.$IP
done
