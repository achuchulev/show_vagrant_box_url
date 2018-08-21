#!/usr/bin/env bash

echo "Specify user:"
read var1

echo "Specify box:"
read var2

#curl -sL  https://app.vagrantup.com/api/v1/box/$var1/$var2 | jq '.current_version.providers[0] .download_url'
curl -sL  https://app.vagrantup.com/api/v1/box/$var1/$var2 | jq '.current_version.providers[].download_url'
