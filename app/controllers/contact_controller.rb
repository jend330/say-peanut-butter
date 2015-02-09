class ContactController < ApplicationController
	def contact
		@products = Product.where(:id => params[:id]).first
	end
	def user
		@user = User.new
	end
end