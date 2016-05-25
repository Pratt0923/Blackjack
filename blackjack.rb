require './card'
require './deck'
require './hand'
require './player'
require './dealer'

class Deck

  SUITS = [:S, :D, :H, :C]
  RANKS = 2.upto(10).to_a + [:J, :Q, :K, :A]

  #in blackjack you need to have the dealer get a new deck of cards.

  #the dealer will deal the cards to the player
    #at first they will deal 2 cards and then after they will deal 1

  #the player will keep drawing cards until they either get to 21 or they
  #go over 21 or whatever
