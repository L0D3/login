class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user
  def require_login
    if !current_user
      redirect_to log_in_path
    end
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
