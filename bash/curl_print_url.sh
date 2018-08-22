#!/usr/bin/env bash

#define organization and box variables
echo "Specify user:"
read var1
echo "Specify box:"
read var2

#Exports URLs of all available providers for the box
curl -sL  https://app.vagrantup.com/api/v1/box/$var1/$var2 | jq '.current_version.providers[].download_url'
