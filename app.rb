require 'sinatra/base'
require "sinatra"
require "./lib/player"

class Battle < Sinatra::Base
enable :sessions
set :session_secret, "super secret"

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1_name])
    $player2 = Player.new(params[:player2_name])
    redirect('/play')
  end

  get '/play' do
    @player1_name = $player1.player_name
    @player2_name = $player2.player_name
    erb(:play)
  end

  get '/attack' do
    @player1_name = $player1.player_name
    @player2_name = $player2.player_name
    erb(:attack)
  end

  run! if app_file == $0
end
