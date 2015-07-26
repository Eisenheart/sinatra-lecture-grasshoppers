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

get '/coaches/:coach' do
  @name = params['coach']

  # hypothetically
  # coach = Coach.find_by_name(name)
  # if coach actually exists
    # render
  # otherwise
    # don't allow

  erb :show
end

# why not /coaches/:name/delete ???
post '/coaches/delete/:name' do
  ap params
  name = params['name']
  Coach.delete(name)
  redirect '/coaches'
end











