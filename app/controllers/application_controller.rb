class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  config.force_ssl = true
  
  rescue_from CanCan::AccessDenied do |exception|
  redirect_to main_app.root_url, :alert => exception.message
	end

	# def login_required
 #    redirect_to('/') if current_user.blank?
 #  end

end
