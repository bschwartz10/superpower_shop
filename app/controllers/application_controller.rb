class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user
  before_action :set_briefcase

  def set_briefcase
    @briefcase = Briefcase.new(session[:briefcase])
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      User.new(first_name: "GUEST")
    end
  end
end
