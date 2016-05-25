require './card'
require './deck'
require './hand'
require './player'
require './dealer'
require "pry"
game_over = false
unless game_over == true

puts "Welcome to Blackjack!"
puts "How much money do you want to bet?"
print "$$: "
input = gets.chomp.to_i

player = Player.new(input)
dealer = Dealer.new


end

  #in blackjack you need to have the dealer get a new deck of cards.

  #the dealer will deal the cards to the player
    #at first they will deal 2 cards and then after they will deal 1

  #the player will keep drawing cards until they either get to 21 or they
  #go over 21 or whatever

  #after this they will either win or lose

  #then they can play again.
