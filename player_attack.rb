def player_attack
    @hit = 0

    while @hit <= 16 do
            puts "Where would you like to attack?"
            ship1 = gets.chomp!.strip.downcase
            s_row = ship1[0]
            col = (ship1[1]).to_i
        if @cpu_board[:"#{s_row}"][col] == true
          puts "You got a hit!"
            @hit += 1
            @cpu_board[:"#{s_row}"][col] = "H"
        elsif @cpu_board[:"#{s_row}"][col] == "H"
         puts "Opps! You already guessed there!"
        else
         puts "Sorry but you hit the ocean!"
        end
        return
    end
end