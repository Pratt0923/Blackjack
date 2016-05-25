require './card'
require './deck'
require './hand'
require './player'

puts "You are now playing Blackjack"
puts "How much do you want to bet?"
print "$$: "
input = gets.chomp

if input != Integer
  puts "please enter a valid number"
  input = gets.chomp
end


# If I deal a hand to a player and then i deal a hit. If i deal a hand next
# then i need it to reset
