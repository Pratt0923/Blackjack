require './card'
require './deck'
require './hand'
require './player'
require './dealer'
require "pry"

# meant to do more on this but my 2 hr nap turned into a 12 hr sleep.

# you can see the dealers first card always
# game_over = false
# unless game_over == true

puts "Welcome to Blackjack!"
puts "How much money do you want to bet?"
print "$$: "
input = gets.chomp.to_i

player = Player.new(input)
dealer = Dealer.new


puts "the dealer has #{dealer.deck.cards.count} cards"
puts "Here is your initial draw:"
dealer.deal_hand_to(player)
dealer.deal_hand_to(dealer)

puts player.hand.to_s
puts "your hand value is #{player.hand.value}"

puts "The dealers first card is:"
print dealer.hand.showing
puts
puts "Do you want to Hit?('y' or 'n')"
print ">"
input = gets.chomp
#--------------------------------------playerturn

until player.hand.blackjack? || player.hand.busted?
  if input == "y"
    dealer.hit(player)
    puts "your cards are now: "
    print player.hand.to_s
    puts
    puts "your card value is: "
    puts player.hand.value

    if player.hand.busted?
      puts "You busted!! You lose."
      exit #I know this is not a good solution. Sorry
    end

    if player.hand.blackjack?
      puts "congratulations you won!!"
      exit
    end

    unless player.hand.blackjack? || player.hand.busted?
      puts "do you want to hit again?"
      print ">"
      input = gets.chomp
      if input == "n"
        puts "your final hand is: "
        puts player.hand.to_s
        puts
        puts "your final hand value is: "
        puts player.hand.value
      end
    end
  end
  until dealer.hand.blackjack? || dealer.hand.busted?
    unless dealer.hand.value >= 18
      puts "the dealer is drawing a card..."
      dealer.hit(dealer)

      if dealer.hand.blackjack?
        puts "too bad the dealer got blackjack"
      end

      if dealer.hand.blackjack?
        puts "the dealer got blackjack! You lose!"
      end
    end
  end
  puts "the dealers final card value was"
  print dealer.hand.value
  puts
  puts "your final hand value was"
  print player.hand.value
  puts

  if dealer.hand.value >= player.hand.value
    puts "the dealer outscored you! you lose"
  else
    puts "you outscored the dealer! you win!"
  end
end


#-----------------------------------endplayerturn
# until dealer.hand.blackjack? || dealer.hand.busted?
#   unless dealer.hand.value >= 18
#     puts "the dealer is drawing a card..."
#     dealer.hit(dealer)
#   else
#     puts "the dealer is passing."
#   end
#
#   if dealer.hand.blackjack?
#     puts "too bad the dealer got blackjack"
#   end
#
#   if dealer.hand.blackjack?
#     puts "the dealer got blackjack! You lose!"
#   end
# end
#---------------------------------end dealer turn








# until input == "y" || input == "n"
#   binding.pry
#   puts "please enter 'y' or 'n'"
#   print ">"
#   input = gets.chomp
# end

#if the dealer gets to 17 they will not hit anymore

#in blackjack you need to have the dealer get a new deck of cards.

#the dealer will deal the cards to the player
#at first they will deal 2 cards and then after they will deal 1

#the player will keep drawing cards until they either get to 21 or they
#go over 21 or whatever

#after this they will either win or lose

#then they can play again.
