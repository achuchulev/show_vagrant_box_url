#!/usr/bin/env python

#define variables
person = raw_input('Enter organization name: ')
box = raw_input('Enter box name: ')
link = ("https://app.vagrantup.com/api/v1/box/" + person + '/' + box)

#load modules
import urllib
import json

#read URL content
out = urllib.urlopen(link).read()

#json module takes a json string and read it
j = json.loads(out)

#filter result for current version and all available providers
result = j["versions"][0]["providers"]

#use loop to extract download url of each provider 
print 'Download URLs of all available providers: '
for urls in result:
    print urls['download_url']

