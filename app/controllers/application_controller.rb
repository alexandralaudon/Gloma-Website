class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def ensure_current_user
      unless current_user
        flash[:notice] = 'You forgot to sign in....'
        redirect_to root_path
      end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id].present?
  end
end
