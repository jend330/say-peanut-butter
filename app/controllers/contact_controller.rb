class ContactController < ApplicationController
	def contact
		@products = Product.where(:id => params[:id]).first
	end
	def new_user
		@new_user = User.new
	end
end