require_relative 'player_creator'
require_relative 'deck_builder'
require_relative 'card'

class Game

    def initialize
        @player_creator = PlayerCreator.new
    end

    def table(players, deck)
        @table = Table.new(players, deck)
    end

    def add_players
        @players = @player_creator.get_players
        puts "Welcome #{@players.join(' and ')}"
    end

    def request_game
        puts "Start new game?"
        answer = gets.chomp
        unless answer == 'n'
            start
        end
        puts "Thank you for playing!"
    end

    # Uses Cards from deck
    def start
        deck = Array.new
        Deck_Builder.build_deck(deck)
        deck.shuffle!
        table = Array.new(12)
        deal_cards(table, deck)
        puts table
    end

    def deal_cards(table, deck)
        table.map! do |n|
            unless n
                n = deck.pop
            else
                n = n
            end
        end
    end


end