def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
 return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
   return gets
end

def end_game(card_total)
puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  display_card_total(card1 + card2)
  return card1 + card2
end

def hit?(card_total)

prompt_user
inp = get_user_input
if inp == 'h'
	card_total += deal_card
	display_card_total(card_total)

elsif inp != 's'
	invalid_command
	prompt_user
end

return card_total

end

def invalid_command
puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  tot = initial_round
  until tot > 21
 	 tot = hit?(tot)
  end
end_game(tot)

end
    
