class Admin::UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @bands = @user.band
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
  private
  def user_params
    params.require(:user).permit(:last_name, :first_name, 
      :address, :postal_code, :email, :telephone_number, :deleted_at)
  end
end
