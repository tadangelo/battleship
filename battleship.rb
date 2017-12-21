require 'pry'
require_relative 'objects'
require_relative 'cpu_board'
require_relative 'cpu_attack'
require_relative 'player_attack'
require_relative 'game_rules'


start

def lets_play
    place_carrier
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
      puts "
      -------------------------------------------------
      | Player has #{@hit} hits, the computer has #{@cpu_hit} hits |
       -------------------------------------------------
      "
    end
  end
end


lets_play