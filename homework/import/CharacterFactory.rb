require_relative './CharacteristicsHero'
require_relative './Hero'

def create_warrior(name, hit_point, attack_dmg, is_hero = nil)
  return Hero.new(name, hit_point, attack_dmg) if is_hero

  CharacteristicsHero.new(name, hit_point, attack_dmg)
end
