#!/bin/sh
set -e

echo "Activating feature 'foundry'"

echo "Installing dependencies"
apt-get -y update; apt-get -y install curl git

echo "Installing foundryup"
curl -L https://foundry.paradigm.xyz | bash

echo "Running foundryup"
/root/.foundry/bin/foundryup

# Move foundry binaries to /usr/local/bin
echo "Moving foundry binaries to /usr/local/bin"
mv /root/.foundry/bin/* /usr/local/bin/