# gems
require 'sinatra'
require 'awesome_print'

# index page
get '/' do
  erb :index
end

get '/coaches' do
  ap "this is the coaches page"
  erb :coaches
end