require 'rails_helper'

	describe Order do

	context "user id, product id, and total present" do
		before { @order = Order.new(user_id: "abc123", product_id: "0x007fc7173e2f20", total: "0.00") }

		it "should return name, product id, and total" do
			expect(@order).to eq "abc123, 0x007fc7173e2f20, 0.00"
		end
	end

	context "user id missing" do
		before { @order = Order.new(product_id: "0x007fc7173e2f20", total: "0.00") }

		it "should return order product id and order total" do
			expect(@order).to eq "0x007fc7173e2f20, 0.00"
		end
	end

	context "order product id missing" do
		before { @order = Order.new(user_id: "0x007fc7173e2f20", total: "0.00") }

		it "should return user id and order total" do
			expect(@order).to eq "abc123, 0.00"
		end
	end

	context "order total missing" do
		before { @order = Order.new(user_id: "abc123", product_id: "0x007fc7173e2f20") }

		it "should return user id and order product id" do
			expect(@order).to eq "abc123, 0x007fc7173e2f20"
		end
	end

	context "user id and order product id missing" do
		before { @order = Order.new(total: "0.00") }

		it "should return order total" do
			expect(@order).to eq "0.00"
		end
	end

	context "user id and order total missing" do
		before { @order = Order.new(product_id: "0x007fc7173e2f20") }

		it "should return order product id" do
			expect(@order).to eq "0x007fc7173e2f20"
		end
	end

	context "order product id and order total missing" do
		before { @order = Order.new(user_id: "abc123") }

		it "should return user id" do
			expect(@order).to eq "abc123"
		end
	end

	context "user id, order product id, and order total missing" do
		before { @order = Order.new() }

		it "should return nothing" do
			expect(@order).to eq ""
		end
	end
end
