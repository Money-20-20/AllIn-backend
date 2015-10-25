class UsersController < ApplicationController
respond_to :json
include BlockChainHelper

  def show
    user = User.find(params["id"])

    if user
      user = inject_extra_user_props(user)
      render json: user
    else
      redirect_to root_path
    end
  end

  def create

    user = User.new(user_params)
    user.password = user_params[:password]

    if user.save
      session[:user_id] = user.id
      render json: user
    end
  end

  def destroy
    user = User.find(params["id"])
    user.destroy

    render json: { response: "User deleted." }

  end

  def send
    user = User.find(params[:id])
    BlockChainHelper::send(user, params[:amount])
    
  end

  def receive
    user = User.find(params["id"])
  end

private 
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
