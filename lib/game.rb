
class Game

#  attr_reader :player_1, :player_2

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(victim)
    victim.attacked
  end


end
