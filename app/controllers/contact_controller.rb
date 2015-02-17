class ContactController < ApplicationController
	def contact
		@products = Product.where(:id => params[:id]).first
	end
end
