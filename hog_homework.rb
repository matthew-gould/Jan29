require "pry" 


def take_turn(player_name)
  player_score = []
  turn_total = 0
  dice_roll = []

  player_name.each do |x|
    puts "\n--------------------------------------"
    puts "#{x} it is your turn. How many times would you like to roll?"
    roll_number = gets.chomp.to_i

  roll_number.times do
    roll = rand(1..6)
    dice_roll.push roll

    if roll == 1 
      turn_total = 0
      puts "DOH! You rolled #{dice_roll} awarded 0 points!"
      break
      
    else 
      turn_total += roll
    end
  end
   player_score.push turn_total 

    puts "You rolled #{dice_roll} and your total is: #{turn_total}"
    puts "----------------------------------------"
    dice_roll.clear  
  end
  end_game(player_score)
  return player_score
end

def end_game player_score  
  total_score = []
  z = 0
  take_turn(player_name)
  
  player_score.each do |x|
    player_score(z) == new_score
    total_score.push new_score
    z += 1

    
end






end


def start_game
  puts "----------------------------------------"
  puts "Welcome to HOG!\n\nThe object of this game is to be the first player to obtain 100 points by rolling dice."
  puts "If you roll a 1 on ANY of your rolls, you will recieve 0 points for that turn."
  puts "----------------------------------------"
end

def player_info
  player_name = []
  game_info = []
  x = 1

  puts "How many players will be playing?\n"
    game_info = gets.chomp.to_i
    puts "\n\nYou've chosen #{game_info} players!\n\n"

  game_info.times do
    puts "\n\nPlease enter name of player #{x}!\n\n"
    x += 1
    name = gets.chomp.downcase.capitalize
    player_name.push name

    
  end
  take_turn(player_name)
  return player_name, game_info
end





start_game
player_info







