require_relative 'Person'

class Games
    def initialize(person1, person2)
        @person = [person1, person2]

        @current = 0
    end
    
    def play
        @person[@current].attack(@person[(@current+1) % 2])
        @current = (@current + 1) % 2
        if cekPersons
            play
        end
    end
    
    def cekPersons
        @player.each do |x|
            if x.isDead()
                return false
            end
        end
        return true
    end
end