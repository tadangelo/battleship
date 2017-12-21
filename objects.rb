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

start

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

def player_attack_grid
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

@z = 0
def place_carrier
  
  puts "Place your carrier 5 spaces"
 
  while @z <= 4
      @ship1 = gets.chomp!.strip.downcase
      s_row = @ship1[0]
      col = @ship1[1..2]
        if (('a'..'j').to_a.include?s_row) && (('1'..'10').to_a.include?col)
          @z += 1
          puts "Choose #{5 - @z} more location(s)"
          col = col.to_i - 1
          @board[:"#{s_row}"][col] = true
          player_ship_grid
        else
          puts "Try again!"
          puts "Choose #{5 - @z} more location(s)" 
          place_carrier
        end
  end
  place_battleship
end

@battle = 0
def place_battleship
  
  puts "Place your battleship 4 spots"
 
  while @battle <= 3
      @ship1 = gets.chomp!.strip.downcase
      s_row = @ship1[0]
      col = @ship1[1..2]
        if (('a'..'j').to_a.include?s_row) && (('1'..'10').to_a.include?col)
          @battle += 1
          puts "Choose #{5 - @battle} more locations"
          col = col.to_i - 1
          @board[:"#{s_row}"][col] = true
          player_ship_grid
        else
          puts "Try again!"
          puts "Choose #{4 - @battle} more locations" 
          place_battleship
        end
  end
  place_cruiser
end

def place_cruiser
  puts "Where would you like to place your Cruiser (Pick 3 spaces, 1 at a time)?"
  3.times do
    ship1 = gets.chomp!.strip.downcase
    s_row = ship1[0]
    col = (ship1[1..2]).to_i - 1

    @board[:"#{s_row}"][col] = true
    player_ship_grid
  end
  place_sub
end

def place_sub
  puts "Where would you like to place your sub (Pick 3 spaces, 1 at a time)?"
  3.times do
    ship1 = gets.chomp!.strip.downcase
    s_row = ship1[0]
    col = (ship1[1..2]).to_i - 1

    @board[:"#{s_row}"][col] = true
    player_ship_grid
  end
  place_patrol
end

def place_patrol
  puts "Where would you like to place your patrol (Pick 2 spaces, 1 at a time)?"
  2.times do
    ship1 = gets.chomp!.strip.downcase
    s_row = ship1[0]
    col = (ship1[1..2]).to_i - 1

    @board[:"#{s_row}"][col] = true
  end
  player_ship_grid
  attack
end

def attack
  @hit = 0
  @cpu_hit = 0

  while @hit <= 16 || @cpu_hit <= 16
    player_attack
    computer_attack
    
    if @hit == 17
        puts "Player wins!!"
        break
    elsif @cpu_hit == 17
        puts "Computer kicked your butt, you must really suck because it used ZERO logic just random guessing!"
        break
    else
        puts "Player has #{@hit} hits, the computer has #{@cpu_hit} hits"
        
    end
  end
end

#
#      puts "Where would you like to attack?"
#         ship1 = gets.chomp!.strip.downcase
#         s_row = ship1[0]
#         col = (ship1[1..2]).to_i

#     if @cpu_board[:"#{s_row}"][col] == true
#         puts "You got a hit!"
#         @hit += 1
#         @cpu_board[:"#{s_row}"][col] = "H"
#     elsif @cpu_board[:"#{s_row}"][col] == "H"
#         puts "Opps! You already guessed there!"
#     else
#         puts "Sorry but you hit the ocean!"
#     end
# end

# puts "You won the game!!"

# end

# def place_carrier

#     puts "Which direction would you like to place your carrier?\n
#     'l' for left, 'r' for right 'u' for up and 'd' for down"

#     while direction = gets.chomp!.downcase
#         case direction
#             when 'l'
#                 puts "Goes left"
#                 break
#             when 'r'
#                 puts "goes right"
#                 break
#             when 'u'
#                 puts "goes up"
#                 break
#             when 'd'
#                 puts "goes down"
#                 break
#             else
#                 puts "Invalid input please enter in 'l' 'r' 'd' or 'u'"
#         end
#     end
# end
# SUDO CODE
# Call the ship and pass the value of ship
# DONE # Ask which direction they would like to go.
# Auto incrementor in that direction for length of ship

place_carrier
