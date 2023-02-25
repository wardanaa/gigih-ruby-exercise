class Person
  attr_reader :name, :hitpoint, :attack_damage

  def attack(other_player)
    other_player.take_damage(@attack_damage)
    puts "#{@name} attack #{other_person.name} with #{@attack_damage} damage"
  end

  def take_damage(damage)
    @hitpoint -= damage
  end
end
