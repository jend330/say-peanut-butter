require 'rails_helper'

	describe User do

	context "email and password present" do
		before { @user = User.create(email:"test", encrypted_password:"test") }

		it "should email and password" do
			expect(@user.email).to eq "test"
			expect(@user.encrypted_password).to eq "test"
		end
	end

	context "email missing" do
		before { @user = User.create(encrypted_password:"test") }

		it "should return encrypted password" do
			expect(@user.encrypted_password).to eq "test"
		end
	end

	context "password missing" do
		before { @user = User.create(email:"test") }

		it "should return email" do
			expect(@user.email).to eq "test"
		end
	end

	context "email and password missing" do
		before { @user = User.create() }

		it "should return nothing" do
			expect(@user.email).to eq ""
			expect(@user.encrypted_password).to eq ""
		end
	end
end
