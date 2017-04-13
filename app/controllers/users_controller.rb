class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
   @user = User.new(user_params)
   if @user.save
     flash[:success] = "Account Created Successfully!"
     session[:user_id] = @user.id
     redirect_to dashboard_path
   else
     flash[:danger] = "Could not create account"
     redirect_to new_user_path
   end
  end

  def show
    @user = current_user
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
