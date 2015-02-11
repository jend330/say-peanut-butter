class StaticPagesController < ApplicationController
	def landing_page
		@featured_product = Product.first
		@products = Product.all
	end
	def thank_you
  	@name = params[:name]
  	@email = params[:email]
  	@message = params[:message]
  	ActionMailer::Base.mail(:from => @email,
  		:to => 'jduvall330@gmail.com', :subject => "A new contact form message from #{@name}", :body => @message).deliver
  end
end
