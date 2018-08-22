#!/usr/bin/env python

# Define variables
person = raw_input('Enter organization name: ')
box = raw_input('Enter box name: ')
link = ("https://app.vagrantup.com/api/v1/box/" + person + '/' + box)

# Load modules
import urllib
import json

# Read URL content
out = urllib.urlopen(link).read()

# JSON module takes a json string and read it
j = json.loads(out)

# Filter result for current version and all available providers
result = j["versions"][0]["providers"]

# Use loop to extract download url of each provider 
print 'Download URLs of all available providers: '
for urls in result:
    print urls['download_url']

