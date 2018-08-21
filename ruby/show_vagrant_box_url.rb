#!/usr/bin/env ruby

# define user and box
puts "Specify user:"
var1 = gets.chomp

puts "Specify box:"
var2 = gets.chomp

# gem install http, or add `gem "http"` to your Gemfile
require "http"

api = HTTP.persistent("https://app.vagrantup.com")

response = api.get("/api/v1/box/#{var1}/#{var2}")

if response.status.success?
  # Success, the response attributes are available here.
#  p response.parse["current_version"]["providers"][0]["download_url"]
   count=response.parse["current_version"]["providers"]
     count.each do |item|
	 item.each do |key,value|
	   p value if key == "download_url"
	 end
     end			

else
  # Error, inspect the `errors` key for more information.
  p response.code, response.body
end
