class AddSourceToCryptocurrencies < ActiveRecord::Migration[5.1]
  def change
    add_column :cryptocurrencies, :source, :string
  end
end
