  # s_row = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
  # s_column = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9" ]
  # @row_choice = s_row.to_a.sample
  # @column_choice = s_column.to_a.sample
  # @cpu_attack = @row_choice.concat @column_choice


  def computer_attack
    s_row = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
    s_column = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9" ]
    @row_choice = s_row.to_a.sample
    @column_choice = s_column.to_a.sample
     @cpu_attack = @row_choice.concat @column_choice
      @hit = 0
      ship1 = @cpu_attack
         while @hit <= 16 do
            s_row = ship1[0]
              col = (ship1[1]).to_i
           if @board[:"#{s_row}"][col] == true
            puts "The computer chose #{@cpu_attack}.  You got hit!"
              @hit += 1
              @board[:"#{s_row}"][col] = "H"
          elsif @board[:"#{s_row}"][col] == "H"
            puts "Opps! The computer chose #{@cpu_attack} again!"
          else
            puts "The computer chose #{@cpu_attack} and hit the ocean!"
          end
          return
    end
  end
