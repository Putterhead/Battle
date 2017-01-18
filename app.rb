require 'sinatra/base'
require "sinatra"

class Battle < Sinatra::Base
enable :sessions
set :session_secret, "super secret"

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player1_name = params[:player1_name]
    @player2_name = params[:player2_name]
    erb(:play)
  end
  run! if app_file == $0
end
