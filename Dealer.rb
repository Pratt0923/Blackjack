require './card'
require './deck'
require './hand'
require './player'

class Dealer
attr_reader :deck
  def initialize
    @deck = Deck.new
  end


  def deal_hand_to(player)
    player.newdeal
    player.hand.cards.push(@deck.draw)
    player.hand.cards.push(@deck.draw)
  end

  def hit(player)
    player.hand.cards.push(@deck.draw)
  end

# If I deal a hand to a player and then i deal a hit. If i deal a hand next
# then i need it to reset
#
end
