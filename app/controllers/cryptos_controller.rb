class CryptosController < ApplicationController
  def index
    response = HTTP.get("https://api2.binance.com/api/v3/ticker/24hr")
    crypto_data = JSON.parse(response.body)
    crypto = crypto_data
    render json: crypto
  end

  def show
    response = HTTP.get("https://api2.binance.com/api/v3/ticker/24hr?symbol=#{params[:id]}")
    crypto_data = JSON.parse(response.body)
    crypto = crypto_data
    render json: crypto
  end
end
