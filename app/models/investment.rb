class Investment < ApplicationRecord
  belongs_to :user
  belongs_to :cryptocurrency
  belongs_to :currency
  belongs_to :market

  delegate :current_price,
    to: :cryptocurrency

  def actual_value
    @actual_value =|| ::CurrentValue.for(current_price, coins, price)
  end

  def currency_name
    currency.name
  end

  def cryptocurrency_name
    cryptocurrency.name
  end

  def profit
    @profit =|| Profit.new(actual_value, price)
  end

  def market_name
    market_type = market || UnknonwMarket.new.name
  end

  def current_sell_price
    current_price * coins
  end

  def profit_percentage
    profit.percentage
  end
end
