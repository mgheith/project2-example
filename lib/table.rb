class Table
    attr_accessor :deal_space

    def initialize(players, deck)
        @players = players
        @deck = deck
        @deal_cards = Array.new(12)
    end

    def to_s
        @deal_space.each |n| do
            puts n
        end
    end

    

end