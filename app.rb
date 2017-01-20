require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack_and_conf' do
    @game = $game
    @game.attack(@game.opponent_of(@game.current_turn))
    if @game.opponent_of(@game.current_turn).hit_points == 0
      erb(:game_over)
    else
      @game.switch_turns
      erb(:attack)
    end
  end

  run! if app_file == $0
end
