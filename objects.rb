@board = {
	a: [false, false, true, false, false, false, false, false, false, false],
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

def place_ship
    puts "Where would you like to attack?"
    ship1 = gets.chomp!.strip
    s_row = ship1[0]
    col = ship1[1]

    puts s_row
    puts col
end

puts @board.select {|k,v| }
