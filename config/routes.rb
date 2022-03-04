Rails.application.routes.draw do
  post "/sessions" => "sessions#create"

  post "/users" => "users#create"

  get "/cryptos" => "cryptos#index"
  get "/cryptos/:id" => "cryptos#show"

  get "/user_cryptos" => "user_cryptos#index"
  post "/user_cryptos" => "user_cryptos#create"
  patch "/user_cryptos/:id" => "user_cryptos#update"
  delete "/user_cryptos/:id" => "user_cryptos#destroy"
end
