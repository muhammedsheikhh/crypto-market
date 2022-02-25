class UserCryptoSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :crypto_id, :quantity, :status, :total
end
