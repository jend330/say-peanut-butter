class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  config.force_ssl = true
  
  rescue_from CanCan::AccessDenied do |exception|
  redirect_to main_app.root_url, :alert => exception.message
	end

# helper_method :admin?

# protected

# 	def authorize
# 		unless admin?
# 			flash[:error] = "unauthorized access"
# 			redirect_to root_path
# 			false
# 		end
# 	end

# 	def admin?
# 		# request_remote_ip == "96.244.2.155"
# 	end
end
