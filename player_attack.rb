require 'pry'

def player_attack

  while @hit <= 16
    puts "Where would you like to attack?"
    ship1 = gets.chomp!.strip.downcase
    s_row = ship1[0]
    col = (ship1[1..2]).to_i - 1
    if @cpu_board[:"#{s_row}"][col] == true
      puts "
      _.-._
      ({  ` )
       ` |''   *BOOM!*
        \_/
 .(      |      ),
`  -----' `-----  '
        "

      sleep 1
      puts "You got a hit!"
      @hit += 1
      @cpu_board[:"#{s_row}"][col] = "H"
    elsif @cpu_board[:"#{s_row}"][col] == "H"
      puts "Opps! You already guessed there!"
    else
      @cpu_board[:"#{s_row}"][col] == false
      @cpu_board[:"#{s_row}"][col] = "w"
      puts "Sorry but you hit the ocean!"
    end
    player_attack_grid
    # binding.pry
    return
  end
end