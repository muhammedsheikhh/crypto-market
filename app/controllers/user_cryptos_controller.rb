class UserCryptosController < ApplicationController
  def index
    #pp current_user
    usercrypto = current_user.user_cryptos.where(status: "buy")
    render json: usercrypto
  end

  def create
    crypto = Crypto.find_or_create_by(code: params[:symbol])
    crypto.name = params[:name] || crypto.name
    crypto.price = params[:price] || crypto.price
    crypto.save

    usercrypto = UserCrypto.new(
      user_id: current_user.id,
      crypto_id: crypto.id,
      quantity: params[:quantity],
      bprice: params[:price],
      status: "buy",
    )
    if usercrypto.save
      render json: usercrypto
    else
      render json: { errors: usercrypto.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    usercrypto = UserCrypto.find_by(id: params[:id])
    usercrypto.quantity = params[:quantity] || usercrypto.quantity
    if usercrypto.save
      render json: usercrypto
    else
      render json: { errors: usercrypto.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    usercrypto = current_user.user_cryptos.find_by(id: params[:id])
    usercrypto.destroy
    render json: { message: "sold" }
  end
end
