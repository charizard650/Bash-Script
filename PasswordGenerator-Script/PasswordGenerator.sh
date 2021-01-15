#! /usr/bin/bash

# A Simple Password Generator Program

echo "This is a simple password generator..."
echo "Please enter the lenght of password: "
read PSWD_LENGHT

for pswd in $(seq 1 5);
do
	openssl rand -base64 48 | cut -c1-$PSWD_LENGHT
done

