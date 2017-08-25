class AddCryptocurrencyIdToInvestments < ActiveRecord::Migration[5.1]
  def change
    add_column :investments, :cryptocurrency_id, :string
    add_index :investments, :cryptocurrency_id
  end
end
