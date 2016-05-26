require './card'
require './deck'
require './hand'
require './player'

#I actually really like tests somehow. I thought I would hate them
#but they're actually kind of fun.

class Dealer
attr_reader :deck, :hand
  def initialize
    @deck = Deck.new
    @hand = []
  end

  def newdeal
    @hand = Hand.new
  end



  def deal_hand_to(player)
    player.newdeal
    player.hand.cards.push(@deck.draw)
    player.hand.cards.push(@deck.draw)
  end

  def hit(player)
    if deck.cards.count == 0
      @deck.reshuffle
      player.hand.cards.push(@deck.draw)
    else
      player.hand.cards.push(@deck.draw)
    end
  end

# If I deal a hand to a player and then i deal a hit. If i deal a hand next
# then i need it to reset
#
end
