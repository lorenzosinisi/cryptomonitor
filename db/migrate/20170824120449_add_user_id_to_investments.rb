class AddUserIdToInvestments < ActiveRecord::Migration[5.1]
  def change
    add_column :investments, :user_id, :string
    add_index :investments, :user_id
  end
end
