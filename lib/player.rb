class Player

  attr_reader :player_name, :health

  def initialize(player_name, health = 100)
    @health = health
    @player_name = player_name
  end

  def attack(opponent, damage = 10)
    opponent.take_damage(damage)
  end

  def take_damage(damage)
    @health -= damage
  end

end
