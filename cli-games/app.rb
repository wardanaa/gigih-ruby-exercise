require_relative 'Person'
require_relative 'Games'

player1 = Player.new('Jin Sakai', 100, 50)
# puts Jin

player2 = Player.new('Khotun Khan', 100, 50)
# puts Khotun

Games.new(person1, person2).play

# require_relative 'player'

# player1 = Player.new("Jin Sakai", 100, 50)
# puts Jin

# player2 = Player.new("Khotun Khan", 100, 50)
# puts Khotun

# jin.attack(khotun)
# puts khotun
