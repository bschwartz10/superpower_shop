class SessionsController < ApplicationController
  def show
  end

  def new
  end

  def create
    # get user identifier (username)
    user = User.find_by(email: params[:session][:email])
  # check user password
    if user && user.authenticate(params[:session][:password])
      flash[:success] = "Log In Successful"
    # track that they are logged in
      session[:user_id] = user.id
    #if password checks out then send them to profile
      if current_admin?
        redirect_to admin_dashboard_path
      else
        redirect_to dashboard_path
      end
    else
  # otherwise tell the user the process fialed
      flash.now[:danger] = "Unsuccessful Log In"
      render :new
  # and send them back to the form to try again
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end

end
