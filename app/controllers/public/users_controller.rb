class Public::UsersController < ApplicationController
  def index
    @musics = current_user.band.musics
    
  end

  def show
    user = User.where(user_id: current_user.id)
    @user = User.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to public_user_path(current_user)
  end

  def unsubscribe
  end

  def withdraw
  end

  def destroy
    user = current_user
    user.destroy
    reset_session
    redirect_to public_root_path, notice: "ありがとうございました。またのご利用を心よりお待ちしております。"
  end
  private
  def user_params
    params.require(:user).permit(:last_name, :first_name, 
    :address, :postal_code, :email, :telephone_number, :deleted_at)
  end
end
