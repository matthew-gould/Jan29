require "pry"

# 	# 3.times do
# 	# roll_number.times do

max_score = 20
p1_score = 0
p2_score = 0

def current_turn roll_number
	turn_total = 0
	dice_roll = []
	
	roll_number.times do
		roll = rand(1..6)
		dice_roll.push roll

		if roll == 1
			puts "DOH! You rolled #{dice_roll} awarded 0 points!"
			return 0
			
		else 
			turn_total += roll	
		end
	end

	puts "You rollled #{dice_roll} and your total is: #{turn_total}"
	puts "----------------------------------------"
	return turn_total
end

def play_game player_name
	
	player_score = []

	player_name.each do |x|
		"#{x} it is your turn. How many times would you like to roll?"
		roll_number = gets.chomp.to_i
		player_score.push current_turn(roll_number)
	end
end

def start_game
	puts "----------------------------------------"
	puts "Welcome to HOG!\n\nThe object of this game is to be the first player to obtain 100 points by rolling dice."
	puts "If you roll a 1 on ANY of your rolls, you will recieve 0 points for that turn."
	puts "----------------------------------------"
end

start_game

puts "How many players would like to play? Please type a number (1-10)!\n"
	players = gets.chomp.to_i
	puts "You have chosen #{players} players!"
	puts "\n---------------------------\n"

players = (1..players).to_a

player_name = []

	players.each do |player_number|
		puts "\nPlayer #{player_number} please enter your name:"
			name_of_player = gets.chomp.downcase.capitalize
			player_name.push name_of_player
	end

puts "\n---------------------------\n\n"
puts "#{player_name}\n\n"

# need to get the number of players + names into the game
# and keep track of their scores.

# player(n) where n = first player in player array




# until p1_score >= max_score || p2_score >= max_score
# 	puts "It is now player 1's turn. Current score: #{p1_score}"
# 	puts "How many times would you like to roll?"
# 	roll_number = gets.chomp.to_i
# 	p1_score += current_turn(roll_number)

# 	puts
# 	puts

# 	puts "It is now player 2's turn. Current score: #{p2_score}"
# 	puts "How many times would you like to roll?"
# 	roll_number = gets.chomp.to_i
# 	p2_score += current_turn(roll_number)

# 	puts
# 	puts
# end

# if p1_score > p2_score
# 	puts "The game hath ended!]\n"
# 	puts "----------------------------------------\n\n\n"
# 	puts "Congrats player 1, all your base are belong to us!\n\n\n"
# elsif p2_score > p1_score
# 	puts "The game hath ended!\n"
# 		puts "----------------------------------------\n\n\n"
# 	puts "Congrats player 2, all your base are belong to us!\n\n\n"
# else
# 	puts "We have a tie.. You both fail!\n\n\n"
# end
