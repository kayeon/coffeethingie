# myapp.rb
require 'sinatra'

# /hello/test

get '/' do
  'Hello world!'
end

get '/hello/:name' do
  # matches "GET /hello/foo" and "GET /hello/bar"
  # params['name'] is 'foo' or 'bar'
  "bonjour #{params['name']}! Whatever, #{params['name']}!"
end


get '/goodbye/:name' do
  # matches "GET /hello/foo" and "GET /hello/bar"
  # params['name'] is 'foo' or 'bar'

  # Javascript objects:
  # var x = {name: "blah"};
  # x.name
  # x['name']

  # String interpolation:
  # "Hello " + params['name'] + "!"

  "goodbye sucka #{params['name']}!"
end
