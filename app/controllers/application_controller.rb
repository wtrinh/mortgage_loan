class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :current_mortgage
 
  def current_user
  	@current_user = User.find(session[:user_id])
  end

  def current_mortgage
  	@current_mortgage = Mortgage.find(session[:mortgage_id]) rescue nil
  end
end
