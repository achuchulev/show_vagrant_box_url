# gem install http, or add `gem "http"` to your Gemfile
require "http"

api = HTTP.persistent("https://app.vagrantup.com").headers

response = api.get("/api/v1/user/myuser")

if response.status.success?
  # Success, the response attributes are available here.
  p response.parse
else
  # Error, inspect the `errors` key for more information.
  p response.code, response.body
end
