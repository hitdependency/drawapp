class UsersController < ApplicationController
  def show
    @user = User.find_by(name: params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the DrawApp!"
      redirect_to @user
    else
      render 'new'
    end
  end

private

    def user_params
      params.require(:user).permit(:name, :password,
                                   :password_confirmation)
    end
end
