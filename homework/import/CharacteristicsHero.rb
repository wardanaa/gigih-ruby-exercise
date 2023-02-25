class CharacteristicsHero
  attr_reader :name, :hp, :attack_dmg

  def initialize(name, hitpoints, attack_damage)
    @name = name
    @hp = hitpoints
    @attack_dmg = attack_damage
  end

  def to_s
    puts "#{@name} has #{@hp} hit points and #{@attack_dmg} attack damage"
  end
  
  def take_damage(damage)
    @hp -= damage
  end

  def attack(other_player)
    puts "#{@name} attacks #{other_player.name} with #{@attack_dmg} damage"
    other_player.take_damage(@attack_dmg)
  end

  def is_Dead?
    if @hp <= 0
        puts "#{@name} dead"
        return true
    end

    puts "#{@name} has #{@hp} hitpoint still alive"
    return false
  end
end
