# myapp.rb
require 'sinatra'

# /hello/test

get '/' do
  # erb(:index);

  erb :index, { :locals => { :page_header => "Coffee Shop Thingie" }}
end


get '/images' do
 # http://www.sinatrarb.com/intro.html#Sending%20Files
  send_file 'poe.jpg'
end


get '/hello/:name' do
  # :name is the key to map the value from the route into the params object
  # Example
  # -------
  # /hello/poe will map "poe" into params[:name]

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
