#!/bin/sh
set -e

echo "Activating feature 'foundry'"
echo "Installing foundryup"
curl -L https://foundry.paradigm.xyz | bash
echo "Running foundryup"
/root/.foundry/bin/foundryup