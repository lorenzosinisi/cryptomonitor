class Cryptocurrency < ApplicationRecord
  has_many :investments
  include ::Price

  def url
    source
  end
end
