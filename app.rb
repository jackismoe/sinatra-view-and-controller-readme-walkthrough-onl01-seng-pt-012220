require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    "home"
  end

  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    a_string = params["string"]
    @reversed_string = a_string.reverse

    erb :reversed
  end

  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']

    erb :friends
  end
end