class Player
  attr_reader :name, :hit_points

  DEFAULT_HIT_POINTS = 100

  def initialize(name, hit_points=DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def attack(player2)
    @player2 = player2
    @player2.attacked
  end

  def attacked
    @hit_points -= 10
  end
end
