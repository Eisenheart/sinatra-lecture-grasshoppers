# gems
require 'sinatra'
require 'awesome_print'

# index page
get '/' do
  ap "hello world"
end

