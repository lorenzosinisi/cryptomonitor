class User < ApplicationRecord
  has_secure_password
  has_many :investments

  def profit
    investments.map(&:actual_value).sum.round(2)
  end

  def balance_in_euro
    (investments.map(&:price).sum + profit).round(2)
  end
end
