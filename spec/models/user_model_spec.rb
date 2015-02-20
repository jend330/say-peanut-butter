require 'rails_helper'

	describe User do

	context "email and password present" do
		before { @user = User.new(email: "example@email.com", encrypted_password: "abc123456") }

		it "should email and password" do
			expect(@user).to eq "example@email.com, abc123456"
		end
	end

	context "email missing" do
		before { @user = User.new(encrypted_password: "abc123456") }

		it "should return User product id and User total" do
			expect(@user).to eq "abc123456"
		end
	end

	context "password missing" do
		before { @user = User.new(email: "example@email.com") }

		it "should return user id and User total" do
			expect(@user).to eq "example@email.com"
		end
	end

	context "email and password missing" do
		before { @user = User.new() }

		it "should return nothing" do
			expect(@user).to eq ""
		end
	end
end
