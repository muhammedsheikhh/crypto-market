class UserCrypto < ApplicationRecord
  belongs_to :user
  belongs_to :crypto

  def total
    quantity * crypto.price
  end
end
