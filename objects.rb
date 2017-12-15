require 'pry'

@board = {
	a: [false, false, false, false, false, false, false, false, false, false],
	b: [false, false, false, false, false, false, false, false, false, false],
	c: [false, false, false, false, false, false, false, false, false, false],
	d: [false, false, false, false, false, false, false, false, false, false],
	e: [false, false, false, false, false, false, false, false, false, false],
	f: [false, false, false, false, false, false, false, false, false, false],
	g: [false, false, false, false, false, false, false, false, false, false],
	h: [false, false, false, false, false, false, false, false, false, false],
	i: [false, false, false, false, false, false, false, false, false, false],
	j: [false, false, false, false, false, false, false, false, false, false]
}

# binding.pry

def player_ship_grid
    puts '   1 2 3 4 5 6 7 8 9 10'
    
    @board.each do |key, row|
        string = ''
        row.each do |v|
            if v
                string += ' S'
            else
                string += ' .'
            end
        end
    
        puts key.to_s + ' ' + string
    end

    
end

@carrier = 5
@battleship = 4
@cruiser = 3
@patrol = 2
@sub = 3

def place_ship

    puts "Where would you like to place your ship?"
    ship1 = gets.chomp!.strip.downcase
    s_row = ship1[0]
    col = (ship1[1]).to_i

    puts @board[:"#{s_row}"][col]

    puts ""
end


@carrier
def place_carrier (5)

    puts "Which direction would you like to place your carrier?\n
    'l' for left, 'r' for right 'u' for up and 'd' for down"

    while direction = gets.chomp!.downcase
        case direction
            when 'l'
                puts "Goes left"
                break
            when 'r'
                puts "goes right"
                break
            when 'u'
                puts "goes up"
                break
            when 'd'
                puts "goes down"
                break
            else
                puts "Invalid input please enter in 'l' 'r' 'd' or 'u'"
        end
    end
end

# SUDO CODE 
# Call the ship and pass the value of ship
# DONE # Ask which direction they would like to go. 
# Auto incrementor in that direction for length of ship

place_carrier
