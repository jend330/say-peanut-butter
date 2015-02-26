require 'rails_helper'

RSpec.describe UserController, type: :controller do

	before do
		@user = User.create(name: "test", encrypted_password:"test")
	end

# 	describe'GET#new'do
# 		it "assigns a new user to @user" do
# 			user = User.create
# 			get :new_user_registration
# 			expect(assigns(:user)).to eq user
# 		end

# 		it "renders the :new template" do
# 			user = User.create
# 				get :new_user_registration
# 				expect(response).to render_template :new
# 		end 

# 	end


end
