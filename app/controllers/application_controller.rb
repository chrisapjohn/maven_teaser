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
end