# gems
require 'sinatra'
require 'awesome_print'

# files
require './models/coach'


# index page
get '/' do
  erb :index
end

get '/coaches' do
  @coaches = Coach.all
  erb :coaches
end