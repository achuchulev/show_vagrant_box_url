#!/usr/bin/env bash

# Define organisation and box variables
echo "Specify user:"
read var1
echo "Specify box:"
read var2

# Exports URLs of all available providers for the box
echo "Download URLs of all available providers: "
curl -sL  https://app.vagrantup.com/api/v1/box/$var1/$var2 | jq '.current_version.providers[].download_url'
