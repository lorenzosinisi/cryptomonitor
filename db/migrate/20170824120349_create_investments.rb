class CreateInvestments < ActiveRecord::Migration[5.1]
  def change
    create_table :investments do |t|
      t.string :currency_id
      t.float :price
      t.float :coins
      t.datetime :date
      t.string :market_id

      t.timestamps
    end
  end
end
