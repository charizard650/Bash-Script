#! /usr/bin/bash

echo "This is a simple file encryption/decryption program..."

echo "Please choose what you want to do: "
choice="Encrypt Decrypt"

select option in $choice; do
	if [ $REPLY = 1 ];
then
	echo "You have choosen Encryption."
	echo "Please enter the name of the file with extension to be encrypted: "
	read encrypt_file
	gpg -c $encrypt_file
	echo "The file has been Encrypted successfully!"
else
	echo "You have choosen Decryption."
        echo "Please enter the name of the file with extension to be decrypted: "
        read decrypt_file
        gpg -c $decrypt_file
        echo "The file has been Decrypted successfully!"
fi
done
