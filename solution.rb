require 'pry'

class Deck
    attr_accessor :cards

    def initialize
        @cards = []
        rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suit = ["Hearts", "Clubs", "Diamonds", "Spades"]

        52.times do 
            cards << Card.new(suit.sample, rank.sample)
        end 
    end

    def choose_card
        x = cards.sample
        self.cards.delete_if {|c| c == x }
        x
    end 

end

class Card
    attr_accessor :rank, :suit
    
    def initialize(suit, rank)
        self.rank = rank
        self.suit = suit   
    end 
end
