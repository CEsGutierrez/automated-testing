
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
    references = {1 => "Ace", 11 => "Jack", 12 => "Queen", 13 => "King"}
    if references.has_key?(value)
      return "#{references.fetch(value)} of #{suit.to_s}"
    else 
      return "#{value} of #{suit.to_s}"
    end
    
  end
end
