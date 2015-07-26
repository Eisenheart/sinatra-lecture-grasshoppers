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

get '/coaches/new' do
  erb :new
end

post '/coaches/create' do
  coach = params['coach_name']
  Coach.create(coach)
  redirect '/coaches'
end