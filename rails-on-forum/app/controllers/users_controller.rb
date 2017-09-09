class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Aramıza hoş geldin"
      redirect_to @user
    else
      render :new
    end
  end

  def show
    render :_form
  end

  private
  def user_params
    params.require(:user).permit!
  end
end
