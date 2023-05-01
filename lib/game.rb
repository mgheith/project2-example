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
        gameplay(gameTable)
    end

    def gameplay(gameTable)
        quit = false
        gameTable.to_s
        while(!quit)            
            puts "Gameplay Functions- \n\nDisplay table: 1\nAttempt set; 2\nHint: 3\nAdd cards: 4\nEnd Game: 5\n\n"
            puts "What would you like to do?"
            choice = gets.chomp
            if(choice == "1")
                gameTable.to_s
                puts "\n\n"
            elsif(choice == "2")
                attempt_set(player[0], gameTable)
            elsif(choice == "3")
                GameplayFunctions.give_hint(gameTable)
            elsif(choice == "4")
                #add_cards(gameTable)
            elsif(choice == "5")
                quit = true;
            end
        end
        
    end

    def attempt_set(player, table)
        puts player.to_s + " claims to have found a set!"
        GameplayFunctions.choose_cards(table)
    end


end