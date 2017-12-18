Ships = Hash["Destroyer", 2, "Submarine", 3, "Cruiser", 3, "Battleship", 4, "Aircraft Carrier", 5]

def start
  start_msg
  welcome_msg
end

def start_msg
  puts "-" * (100)
  
  puts "
 _|_|_|      _|_|    _|_|_|_|_|  _|_|_|_|_|  _|        _|_|_|_|    _|_|_|  _|    _|  _|_|_|  _|_|_|   
 _|    _|  _|    _|      _|          _|      _|        _|        _|        _|    _|    _|    _|    _| 
 _|_|_|    _|_|_|_|      _|          _|      _|        _|_|_|      _|_|    _|_|_|_|    _|    _|_|_|   
 _|    _|  _|    _|      _|          _|      _|        _|              _|  _|    _|    _|    _|       
 _|_|_|    _|    _|      _|          _|      _|_|_|_|  _|_|_|_|  _|_|_|    _|    _|  _|_|_|  _|       
"
  puts "-" * (100)
  
  sleep(1)
end

def welcome_msg
  puts "Welcome to Battleship!"
  
  sleep(1)
  
  puts "PRESS ANY KEY TO CONTINUE"
  gets
  
  sleep(1)
  
  puts "Are you familiar with Battleship? (Y/N)"
  wq1 = gets.strip.downcase
    if wq1 == "y"
      puts "HAH! Arrogant human... It's your funeral."
      puts "-" * (100)
    else
      puts "-" * (100)
      puts "OBJECTIVE OF THE GAME:
      Be the first to sink all 5 of your opponent's ships."
      puts "-" * (100)
      puts "PREPARE FOR BATTLE:
      You will be given a fleet of 5 ships to place on your board.
      On your turn, you will input coordinates for your ships to engage.
      Your attack coordinates correspond to a LETTER and NUMBER on your board.
      You will be alerted if your attack hit or missed.
      To sink an opponent's ship, you must successfully hit in each space it's placed.
      We will alternate turns until this war of over."
      puts "-" * (100)
      puts "YOUR FLEET:"
      Ships.each do |name, length|
        puts "Ship Type: #{name.ljust(18)}| Length: #{length}"
      end
      puts "-" * (100)
      puts "RULES FOR PLACING YOUR SHIPS:
      Place each ship in a horizontal or vertical position.
      You cannot place your ships diagonally.
      You cannot overlap your ship placements.
      These ships vary in length and cannot be moved once placed, so choose your placement wisely."
      puts "-" * (100)
    end
end

def player_attack_msg
  puts "It's your turn to attack. You have #{@player.fleet.length} ships on the board."
  puts "Here is the current board"
  sleep(2)
end

def computer_attack_msg
  puts "The computer is engaging!"
  sleep(2)
end