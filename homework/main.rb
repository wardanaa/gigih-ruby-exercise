require_relative './import/CharacterFactory'
require_relative './import/GameTurnBased'

def start_game
  warrior1 = create_warrior('Jin Sakai', 100, 50, true)
  warrior1.to_s
  puts "\n"
  warrior2 = create_warrior('Khotun Khan', 500, 50)
  warrior2.to_s
  puts "\n"

  game = GameTurnBased.new(warrior1, warrior2)
  loop do
    game.warrior_attacking(game.trails_hero[0], game.trails_hero[1])
    break if game.is_finished

    game.warrior_attacking(game.trails_hero[1], game.trails_hero[0])
    break if game.is_finished
  end
end

start_game
