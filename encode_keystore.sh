#!/bin/bash

# This script encodes the keystore file to base64 for GitHub secrets

if [ ! -f "pulkit_shake.keystore" ]; then
  echo "Error: pulkit_shake.keystore file not found!"
  exit 1
fi

base64 -i pulkit_shake.keystore > keystore_base64.txt

echo "Keystore encoded to base64 and saved to keystore_base64.txt"
echo "Use this content for your GitHub secret KEYSTORE_BASE64"