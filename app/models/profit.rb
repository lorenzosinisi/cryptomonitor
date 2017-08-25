class Profit
  attr_reader :actual_value, :price

  def initialize(actual_value, price)
    @actual_value, @price = actual_value, price 
  end
  
  def percentage
    (actual_value / price) * 100
  end
end