class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render "new"
    end
  end

  def new
    @user = current_user if user_signed_in?
  end


  private

  def user_params
    params.require(:user).permit(:name, :email, :phone_number)
  end
end
