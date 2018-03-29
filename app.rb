require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    @string = params[:string]
    erb :reversed
  end

  get '/friends' do
    @friends = ['Malala Yousafzai', 'Rob']
    erb :friends
  end
end
