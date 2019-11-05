class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  def show
    
  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params(
    params.require(:user).permit(
      :username,
      :email,
      :password
    )
  end

end