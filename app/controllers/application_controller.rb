class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(resource)
  	if session[:rating].present?
  		@rating = current_user.ratings.create(session[:rating]["rating"])
  		session[:rating] = nil
  		flash[:notice] = "Thanks for rating your advisor!"
  	else
  		super
  	end
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end