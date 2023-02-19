require_relative 'player_creator'
require_relative 'deck_builder'
require_relative 'card'
require_relative 'gameplay_functions'
require_relative 'table'

class Game

    def initialize
        @player_creator = PlayerCreator.new
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
        DeckBuilder.build_deck_for_set(deck)
        deck.shuffle!
        gameTable = Table.new(deck)
        gameTable.deal_cards
        #table = Array.new(12)
        #GameplayFunctions.deal_cards(table, deck)
        #puts table
        gameTable.to_s
        #attempt_set(@players[0], table)
        #GameplayFunctions.deal_cards(table, deck)
    end

    def attempt_set(player, table)
        puts player.to_s + " claims to have found a set!"
        GameplayFunctions.choose_cards(table)
    end


end