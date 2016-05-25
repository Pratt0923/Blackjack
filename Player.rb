require "./Hand"

class Player
  attr_reader :wallet, :hand

  def initialize(wallet = 0, hand = Hand.new)
    @wallet = wallet
    @hand = hand
  end


  def wins(newwinnings)
    @wallet = (newwinnings + wallet)
  end

  def broke?

  end


end
