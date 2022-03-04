class CryptosController < ApplicationController
  def index
    usercrypto = Crypto.all
    render json: usercrypto
  end

  def show
    crypto = Crypto.find_by(id: params[:id])
    render json: crypto
  end
end
