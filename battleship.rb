require_relative 'objects'
require_relative 'cpu_attack'
require_relative 'cpu_board'
require_relative 'player_attack'

def win_or_lose
  if player_attack 
    @hit== 17
    puts "You wont the game!!"
  elsif computer_attack 
    @hit == 17
    puts "You lost the game"
  else
    puts "Something obviously went wrong"
  end
end