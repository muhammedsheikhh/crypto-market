class AddBuyPrice < ActiveRecord::Migration[7.0]
  def change
    add_column :user_cryptos, :bprice, :decimal, precision: 10, scale: 2
  end
end
