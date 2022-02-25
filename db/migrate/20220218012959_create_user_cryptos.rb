class CreateUserCryptos < ActiveRecord::Migration[7.0]
  def change
    create_table :user_cryptos do |t|
      t.integer :user_id
      t.integer :crypto_id
      t.integer :quantity
      t.integer :purchased_price
      t.string  :status

      t.timestamps
    end
  end
end
