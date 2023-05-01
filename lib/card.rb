class Card
    attr_reader :shape
    attr_reader :color
    attr_reader :number
    attr_reader :shading

    def initialize(shape, color, number, shading)
        @shape = shape
        @color = color
        @number = number
        @shading = shading
    end

    def self.shape
        @shape
    end
    def self.color
        @color
    end
    def self.number
        @number
    end
    def self.shading
        @shading
    end

    def to_s
        "#{shape}, #{color}, #{number}, #{shading}"
    end

end

