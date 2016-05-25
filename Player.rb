class Player
  attr_reader :wallet

  def initialize(wallet)
    @wallet = wallet
  end

  def wins(newwinnings)
    @wallet = (newwinnings + wallet)
  end



end
