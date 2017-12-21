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
 .       |       ,
`  -----' `-----  '
        "
    fire = gets.chomp!.strip.downcase
    x = fire[0]
    y = (fire[1..2])
    if (('a'..'j').to_a.include?x) && (('1'..'10').to_a.include?y)
      y = y.to_i - 1
            if @cpu_board[:"#{x}"][y] == true
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
              @cpu_board[:"#{x}"][y] = "H"
            elsif @cpu_board[:"#{x}"][y] == "H"
              puts "Opps! You already guessed there! Guess again!"
              player_attack
            else
              @cpu_board[:"#{x}"][y] == false
              @cpu_board[:"#{x}"][y] = "w"
              puts "Sorry but you hit the ocean!"
            end
    else
      puts "Invalid input! Guess again!"
      player_attack
    end 
    player_attack_grid
    # binding.pry
    return
  end
end