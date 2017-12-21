require 'pry'
require_relative 'cpu_board'
require_relative 'cpu_attack'
require_relative 'player_attack'
require_relative 'game_rules'

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
      elsif v == "H"
        string += ' *'
      else
        string += ' .'
      end
    end

    puts key.to_s + ' ' + string
  end
end

def computer_attack_grid
  puts "THE COMPUTER HAS ATTACKED!!"

  puts '   1 2 3 4 5 6 7 8 9 10   '
  @cpu_attack_board = @board
  @cpu_attack_board.each do |key, row|
    string = ''
    row.each do |v|
    if v  == true
      string += ' S'
    elsif v == "H"
        string += ' *'
    elsif v == "w"
        string += ' ~'
    else v == false
      string += ' .'
    end
  end
    puts key.to_s + ' ' + string
  end
end


def player_attack_grid

  puts "YOU HAVE ATTACKED!!"

  puts '   1 2 3 4 5 6 7 8 9 10'

  @cpu_board.each do |key, row|
    string = ''
    row.each do |v|
      if v == "H"
        string += ' *'
      elsif v == "w"
        string += ' ~'
      else
        string += ' .'
      end
    end

    puts key.to_s + ' ' + string
  end
end


@carrier = 0
@battle = 0
@cruiser = 0
@patrol = 0
@sub = 0


def place_carrier
  
  puts "Place your carrier 5 spaces"
 
  while @carrier <= 4
      @ship_carrier = gets.chomp!.strip.downcase
      x = @ship_carrier[0]
      y = @ship_carrier[1..2]
        if @board[:"#{x}"][y.to_i - 1] == false
          if (('a'..'j').to_a.include?x) && (('1'..'10').to_a.include?y)
            @carrier += 1
            puts "Choose #{5 - @carrier} more location(s)"
            y = y.to_i - 1
            @board[:"#{x}"][y] = true
            player_ship_grid
          else
            puts "Try again!"
            puts "Choose #{5 - @carrier} more location(s)" 
            place_carrier
          end
        else
          puts "You already have a ship there! Place your ship somewhere else"
          place_carrier
        end
  end
  place_battleship
end


def place_battleship
  
  puts "Place your battleship 4 spots"
 
  while @battle <= 3
      @ship_battleship = gets.chomp!.strip.downcase
      x = @ship_battleship[0]
      y = @ship_battleship[1..2]
        if @board[:"#{x}"][y.to_i - 1] == false
          if (('a'..'j').to_a.include?x) && (('1'..'10').to_a.include?y)
            @battle += 1
            puts "Choose #{4 - @battle} more locations"
            y = y.to_i - 1
            @board[:"#{x}"][y] = true
            player_ship_grid
          else
            puts "Try again!"
            puts "Choose #{4 - @battle} more locations" 
            place_battleship
          end
        else
          puts "You already have a ship there! Place your ship somewhere else"
          place_battleship
        end
  end
  place_cruiser
end

def place_cruiser
  
  puts "Where would you like to place your Cruiser (Pick 3 spaces, 1 at a time)?"
 
  while @cruiser <= 2
      @ship_cruiser = gets.chomp!.strip.downcase
      x = @ship_cruiser[0]
      y = @ship_cruiser[1..2]
        if @board[:"#{x}"][y.to_i - 1] == false
          if (('a'..'j').to_a.include?x) && (('1'..'10').to_a.include?y)
            @cruiser += 1
            puts "Choose #{3 - @cruiser} more locations"
            y = y.to_i - 1
            @board[:"#{x}"][y] = true
            player_ship_grid
          else
            puts "Try again!"
            puts "Choose #{3 - @cruiser} more locations" 
            place_cruiser
          end
        else
          puts "You already have a ship there! Place your ship somewhere else"
          place_cruiser
        end
  end
  place_sub
end

def place_sub
  
  puts "Where would you like to place your sub (Pick 3 spaces, 1 at a time)?"
 
  while @sub <= 2
      @ship_sub = gets.chomp!.strip.downcase
      x = @ship_sub[0]
      y = @ship_sub[1..2]
        if @board[:"#{x}"][y.to_i - 1] == false
          if (('a'..'j').to_a.include?x) && (('1'..'10').to_a.include?y)
            @sub += 1
            puts "Choose #{3 - @sub} more locations"
            y = y.to_i - 1
            @board[:"#{x}"][y] = true
            player_ship_grid
          else
            puts "Try again!"
            puts "Choose #{3 - @sub} more locations" 
            place_sub
          end
        else
          puts "You already have a ship there! Place your ship somewhere else"
          place_sub
        end
  end
  place_patrol
end

def place_patrol
  
  puts "Where would you like to place your patrol (Pick 2 spaces, 1 at a time)?"
 
  while @patrol <= 1
      @ship_patrol = gets.chomp!.strip.downcase
      x = @ship_patrol[0]
      y = @ship_patrol[1..2]
        if @board[:"#{x}"][y.to_i - 1] == false
          if (('a'..'j').to_a.include?x) && (('1'..'10').to_a.include?y)
            @patrol += 1
            puts "Choose #{2 - @patrol} more locations"
            y = y.to_i - 1
            @board[:"#{x}"][y] = true
            player_ship_grid
          else
            puts "Try again!"
            puts "Choose #{2 - @patrol} more locations" 
            place_patrol
          end
        else
          puts "You already have a ship there! Place your ship somewhere else"
          place_patrol
        end
  end
  attack
end




