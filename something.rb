require "pry"
@z = 0
def attack
  
  puts "Place your battleship"
 
  while @z <= 4
      @choice = gets.chomp!.strip.downcase
      x = @choice[0]
      y = @choice[1..2]
        if (('a'..'j').to_a.include?x) && (('1'..'10').to_a.include?y)
          @z += 1
          puts "Choose #{5 - @z} more locations" 
        else
          puts "Try again!"
          puts "Choose #{5 - @z} more locations" 
          attack
        end
  end
end

attack

  