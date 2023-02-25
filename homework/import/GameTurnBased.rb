class GameTurnBased
  attr_accessor :trails_hero, :is_finished, :winner

  def initialize(warrior1, warrior2)
    @trails_hero = [warrior1, warrior2]
    @is_finished = false
    @winner = nil
  end

  def warrior_attacking(attacker, attacked)
    attacker.attack(attacked)
    if attacked.is_Dead?
      game_finished(attacker, attacked)
    else
      attacked.to_s
    end
  end

  def game_finished(winner, _loser)
    puts "Long live #{winner.name}!"
    @is_finished = true
  end
end
