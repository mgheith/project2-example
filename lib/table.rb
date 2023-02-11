class Table
    attr_accessor :deal_space
    attr_accessor :deck
    attr_accessor :discard_space
    attr_accessor 

    def initialize(deck)
        @deal
        make_game_table
    end

    def to_s
        @deal_space.each |n| do
            puts n
        end
    end
    

end