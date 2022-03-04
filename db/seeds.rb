# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!(name: "Peter", email: "peter@test.com", password: "password")
User.create!(name: "Test", email: "test@test.com", password: "password")
User.create!(name: "Muhammed", email: "mo@test.com", password: "password")

Crypto.create!(name: "Bitcoin", code: "BTC", price: 39000)
Crypto.create!(name: "Etherium", code: "ETH", price: 2900)
Crypto.create!(name: "Binance", code: "BNB", price: 300)
Crypto.create!(name: "Litecoin", code: "LTC", price: 280)

UserCrypto.create!(user_id: 1, crypto_id: 2, quantity: 1)
UserCrypto.create!(user_id: 1, crypto_id: 1, quantity: 4)
UserCrypto.create!(user_id: 2, crypto_id: 1, quantity: 1)
UserCrypto.create!(user_id: 3, crypto_id: 1, quantity: 10)
