class Table
    attr_accessor :deal_space
    attr_accessor :deck
    attr_accessor :discard_space

    def initialize(deck)
        @deal_space = Array.new(4) {Array.new(3)}
        @deck = deck
        @discard_space = Array.new()
    end

    def add_to_discard_pile(cards)
        cards.each do
            @discard_space.push(cards.pop)
        end
    end

    def deal_cards
        @deal_space.map! do |n|
            n.map! do |spot|
                unless spot
                    spot = @deck.pop
                else
                    spot = spot
                end
            end
        end
    end

    def add_to_player_spot
    end

    def display_discard_pile
        @discard_space.to_s
    end

    def to_s
        @deal_space.each do |n|
            n.each do |v|
                puts v
            end
        end
    end
end