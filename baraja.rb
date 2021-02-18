require_relative 'carta'


class Deck 
    def initialize
        generate_deck               
    end

    def generate_deck
        figures = ['C', 'D', 'E', 'T']
        @cards = []
        
        figures.each do |figure|
            for i in (1..13) do
                @cards.push("#{i} #{figure}")
            end
        end
    end    
    
    def show
        puts @cards
    end        
    
    def shuffle!
        @cards.shuffle!
    end
    
    def shift
        @cards.shift
    end
    
    def handout(n = 5)
        hand = []

        n.times { hand << shift }
        return hand
    end        
end    

deck = Deck.new

deck.shuffle!
puts deck.handout