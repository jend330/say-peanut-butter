class LandingPageController < ApplicationController
  def landing_page
  	@user = User.all
  end
  def new
  	@user = User.new
  end
end
