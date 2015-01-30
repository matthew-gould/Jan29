require "pry"



def roll_dice roll_number
	# 3.times do
	# roll_number.times do

	player_total = []
	turn_total = 0

	total_rolls = (1..roll_number).to_a
	
	total_rolls.each do |x|
		roll = rand(1..6)

		if roll == 1
			puts "You've lost all your points for this turn!"
			return 0
		else
			turn_total += roll
		end
	end
	
	puts "Your total for this turns is: #{turn_total}"	
	turn_total
end

def current_turn
	roll_dice 0
end


puts "How many times would you like to roll?"
	roll_number = gets.chomp.to_i
	roll_dice(roll_number)

max_score = 20
player1_total = 0
player2_total = 0

if player1_total <= max_score
	puts "It is now player 2's turn. Current score is #{player2_total}."
elsif player2_total <= max_score
	player1_total += current_turn
	puts "It is now player player 1's turn. Current score #{player1_total}."
	player2_total += current_turn
else
	puts "The game hath ended!"
	puts
puts
	if player1_total > player2_total
		puts "Congrats player 1, all your base are belong to us!"
	elsif player2_total > player1_total
		puts "Congrats player 2, all your base are belong to us!"
	else
		puts "We have a tie.. You both fail!"
	end
end


	


	# puts
	# puts
	# puts "Your roll total is #{(player_total)}"
	# puts "-------------------------"
	# puts
	# puts

