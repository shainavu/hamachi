require "sinatra"
require "bugsnag"

Bugsnag.configure do |config|
  config.api_key = "69617653db3110b1e9b7b50916542ebc"
end

  use Bugsnag::Rack
  enable :raise_errors

# Create a "hello world" endpoint
get '/' do
  "Hello Shaina's World!"
end

# Create an endpoint that crashes
get '/crash' do
  nil.length
end