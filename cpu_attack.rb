# s_row = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
# s_column = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9" ]
# @row_choice = s_row.to_a.sample
# @column_choice = s_column.to_a.sample
# @cpu_attack = @row_choice.concat @column_choice

def computer_attack
  s_row = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
  s_column = %w(1 2 3 4 5 6 7 8 9 10)
  @row_choice = s_row.to_a.sample
  @column_choice = s_column.to_a.sample
  @cpu_attack = @row_choice.concat @column_choice
  ship1 = @cpu_attack
  while @cpu_hit <= 16
    s_row = ship1[0]
    col = (ship1[1..2]).to_i - 1
    if @board[:"#{s_row}"][col] == true
       puts "
           _.-._
          ({  ` )
           ` |''   *BOOM!*
            \_/
     .       |       ,
    `  -----' `-----  '
            "
      sleep 1
      puts "The computer chose #{@cpu_attack}.  The computer got a hit!"
      @cpu_hit += 1
      @board[:"#{s_row}"][col] = "H"
    elsif @board[:"#{s_row}"][col] == "H"
      puts "Opps! The computer chose #{@cpu_attack} again!"
    else
      @board[:"#{s_row}"][col] == false
      @board[:"#{s_row}"][col] = "w"
      puts "The computer chose #{@cpu_attack} and hit the ocean!"
      # binding.pry
    end
    computer_attack_grid
    return
  end
end