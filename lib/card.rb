
# card.rb

class Card
  attr_reader :value, :suit
  
  def initialize(value, suit)
    @value = value
    @suit = suit
    if value < 1 || value > 13
      raise ArgumentError
    end
    
    
  end
  
  def to_s
    return "#{value} of #{suit.to_s}"
  end
  
end
