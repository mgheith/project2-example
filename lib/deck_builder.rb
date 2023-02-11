require_relative 'card'

class DeckBuilder

    def DeckBuilder.build_deck_for_set(game_deck)
        shapes = ['diamond ', 'squiggle', 'oval    ']
        colors = ['red     ', 'green   ', 'blue    ']
        numbers = [1, 2, 3]
        shading = ['open   ', 'striped', 'solid  ']
        shapes.each do |s|
            colors.each do |c|
                numbers.each do |n|
                    shading.each do |x|
                        card = Card.new(s, c, n, x)
                        game_deck.push(card)
                    end
                end
            end
        end
    end

end