require 'rails_helper'

	describe Order do

	context "user id, product id, and total present" do
		before { @order = Order.create(user_id:0, product_id:0, total:0.00) }

		it "should return user id, product id, and total" do
			expect(@order.user_id).to eq 0
			expect(@order.product_id).to eq 0
			expect(@order.total).to eq 0.00
		end
	end

	context "user id missing" do
		before { @order = Order.create(product_id:0, total:0.00) }

		it "should return order product id and order total" do
			expect(@order.product_id).to eq 0
			expect(@order.total).to eq 0.00
		end
	end

	context "order product id missing" do
		before { @order = Order.create(user_id:0, total:0.00) }

		it "should return user id and order total" do
			expect(@order.user_id).to eq 0
			expect(@order.total).to eq 0.00
		end
	end

	context "order total missing" do
		before { @order = Order.create(user_id:0, product_id:0) }

		it "should return user id and order product id" do
			expect(@order.user_id).to eq 0
			expect(@order.product_id).to eq 0
		end
	end

	context "user id and order product id missing" do
		before { @order = Order.create(total:0.00) }

		it "should return order total" do
			expect(@order.total).to eq 0.00
		end
	end

	context "user id and order total missing" do
		before { @order = Order.create(product_id:0) }

		it "should return order product id" do
			expect(@order.product_id).to eq 0
		end
	end

	context "order product id and order total missing" do
		before { @order = Order.create(user_id:0) }

		it "should return user id" do
			expect(@order.user_id).to eq 0
		end
	end

	context "user id, order product id, and order total missing" do

		it "should return nothing" do
			expect(@order).to eq nil
		end
	end
end
