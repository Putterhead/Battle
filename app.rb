require 'sinatra/base'
require './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player_1_name])
    $player2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name, @player_2_name = $player1.name, $player2.name
    erb(:play)
  end

  get '/attack_and_conf' do
    @player_1_name, @player_2_name = $player1.name, $player2.name
    erb(:attack)
  end

  run! if app_file == $0
end
