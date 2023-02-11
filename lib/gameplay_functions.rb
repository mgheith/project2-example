class GameplayFunctions

    def GameplayFunctions.deal_cards(table, deck)
        table.map! do |n|
            unless n
                n = deck.pop
            else
                n = n
            end
        end
    end

    def GameplayFunctions.determine_set(chosen_cards)
        shapes = Array.new(3)
        colors = Array.new(3)
        numbers = Array.new(3)
        shadings = Array.new(3)
        chosen_cards.each_with_index do |n, i|
            shapes[i] = n.shape
            colors[i] = n.color
            numbers[i] = n.number
            shadings[i] = n.shading
        end
        return shapes.uniq.length != 2 && colors.uniq.length != 2 && numbers.uniq.length != 2 && shadings.uniq.length != 2
    end

    def GameplayFunctions.pick_up_cards(table)
        puts table
    end

    def GameplayFunctions.choose_cards(table)
        puts "Which cards are you choosing?"
        table.each_with_index {|n, i| puts n.to_s + " | " + i.to_s }
        puts "Type your choices one by one, pressing 'enter' between each"
        chosen_cards = Array.new(3)
        chosen_cards.map! do |n|
            i = gets.chomp.to_i
            n = table[i]
        end
        set = GameplayFunctions.determine_set(chosen_cards)
        if set
            puts "Congratulations! You have found a set!"
            
        else
            puts "Apologies, but that isn't a set... :("
            chosen_cards.each do |n|
                GameplayFunctions.deal_cards(table, chosen_cards)
            end
        end
        return set
    end
end