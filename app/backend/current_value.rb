module CurrentValue
  extend self

  def for(current_price, bitcoins, paid)
    owned = current_price.to_f * bitcoins.to_f

    (owned - paid).round(3)
  end
end
