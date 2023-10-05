: '
Creation Date : 11/05/2022
Last Updated : N/A
Last Tested : N/A
Author : Brady Johnson
Purpose : Automates the installation of OSSEC HIDS on a Linux system by updating package information, installing Git, cloning the OSSEC HIDS repository, extracting the source code, running the installation script, and finally starting the OSSEC HIDS service. 
'

#!/bin/bash 

echo "Updating APT..."

sudo apt update

echo "Installing git..."

sudo apt install git

echo "Beginning OSSEC Install..."
echo "Cloning OSSEC HIDS git..."

git clone https://github.com/ossec/ossec-hids

echo "Unziping..."

tar -zxvf ossec-hids.tar.gz

echo "Installing..."

cd ossec-hids
./install.sh

echo "Starting OSSEC..."

/var/ossec/bin/ossec-control start
