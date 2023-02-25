class Person
  attr_reader :name, :hitpoint, :attack_damage

  def initialize(name, _hitpoint, _attack_damage)
    @name = name
    @hp = hp
    @attack = attack

    puts "#{name} gain #{hp} with #{attack} strenght"
  end

  def HPminus(hitpoint)
    @hitpoint -= hitpoint
    cekPerson()
  end

  def cekPerson()
    return self.isDead
  end

  def isDead
    return @hitpoint <= 0
  end

  def attack_damage(person)
    puts "#{name} attack #{person.name}"
    person.HPminus(@attack_damage)
    puts "#{person.name} is dead" if person.isDead
  end
end
