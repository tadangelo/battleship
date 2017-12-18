require 'pry'
require_relative 'cpu_board'
require_relative 'cpu_attack'
require_relative 'player_attack'
require_relative 'game_rules'
require_relative 'battleship'

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

@carrier = 5
@battleship = 4
@cruiser = 3
@patrol = 2
@sub = 3

def place_carrier
  player_ship_grid
  puts "Where would you like to place your carrier (Pick 5 spaces, 1 at a time)?"
  5.times do
    ship1 = gets.chomp!.strip.downcase
    s_row = ship1[0]
    col = (ship1[1..2]).to_i - 1

    @board[:"#{s_row}"][col] = true
    player_ship_grid
  end
  place_battleship
end

def place_battleship
  puts "Where would you like to place your battleship (Pick 4 spaces, 1 at a time)?"
  4.times do
    ship1 = gets.chomp!.strip.downcase
    s_row = ship1[0]
    col = (ship1[1..2]).to_i - 1

    @board[:"#{s_row}"][col] = true
    player_ship_grid
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
  end
  win_or_lose
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
