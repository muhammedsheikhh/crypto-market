class UserCryptosController < ApplicationController
  def index
    #pp current_user
    usercrypto = current_user.User_cryptos.where(status: "buy")
    render json: usercrypto
  end

  def create
    usercrypto = UserCrypto.new(
      user_id: current_user.id,
      crypto_id: params[:crypto_id],
      quantity: params[:quantity],
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
    usercrypto = current_user.user_crypto.find_by(id: params[:id])
    usercrypto.status = "removed"
    usercrypto.save
    render json: { message: "sold" }
  end
end
