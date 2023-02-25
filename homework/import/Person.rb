require_relative './CharacteristicsHero'

class Hero < CharacteristicsHero
  def deflect_attack?
    deflect_chance = rand(10)
    deflect_chance <= 8
  end

  def take_damage(damage)
    if deflect_attack?
      puts "#{@name} deflected the attack"
    else
      @hp -= damage
    end
  end
end
