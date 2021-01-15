# !/usr/bin/bash

if ["$1" == ""]
then
echo "You forget your IP Address..."

else

for ip in `seq 1 254`; do
sudo ping -c 1 $1.$ip | grep "64 bytes" | awk '{print $4}' | tr -d ":" &
done
fi

