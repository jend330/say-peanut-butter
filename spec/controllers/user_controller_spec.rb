require 'rails_helper'

RSpec.describe UserController, type: :controller do

	before do
		@user = User.create(name: "test", encrypted_password:"test")
	end

	describe'GET#show'do
		it "assigns the requested user to @user" do
			user = create(:user)
			get :show, id: user
			expect(assigns(:user)).to eq user
		end

		it "renders the :show template" do
			user = create(:user)
				get :show, id: user 
				expect(response).to render_template :show
		end 

	end


end
