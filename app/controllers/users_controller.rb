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
     flash[:danger] = "Could not create account because #{@user.errors.full_messages.join(", ")}"
     redirect_to new_user_path
   end
  end

  def show
    @user = current_user
    @paid_orders = current_user.orders.where(status: 'Paid')
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user

    if @user.update(user_params)
      flash[:success] = "Account Updated Successfully!"
      session[:user_id] = @user.id
      redirect_to dashboard_path
    else
      flash[:danger] = "Could not edit account"
      redirect_to edit_user_path(current_user)
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :address, :email, :password, :password_confirmation)
  end
end
