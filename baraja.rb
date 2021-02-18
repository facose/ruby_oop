require_relative 'carta'


class Deck 
    def initialize
        figures = ['C', 'D', 'E', 'T']
        @cards = []
        
        figures.each do |figure|
            for i in (1..13) do
                @cards.push("#{i} #{figure}")
            end
        end         
    end
    
    def shuffle
        @cards = @cards.shuffle
    end
    
    def throw_first_car
        first_card = shuffle.delete(@cards[0])
        puts "La carta eliminada es: #{first_card}"
        puts 'El resto de la baraja es: '
        return @cards
    end
    
    def distribute_hand
        shuffle
        puts @cards.sample(5)          
    end        
end    

deck = Deck.new

puts deck.throw_first_car