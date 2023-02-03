class Card
    attr_reader :shape
    attr_reader :color
    attr_reader :number

    def initialize(shape, color, number)
        @shape = shape
        @color = color
        @number = number
    end
end

