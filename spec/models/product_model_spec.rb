require 'rails_helper'

	describe Product do

	context "product name, description, and image present" do
		before { @product = Product.new(product_name: "One Hour Session", product_description: "one hour session", product_image_url: "/images/one-hour.png") }

		it "should return name, description, and image" do
			expect(@product).to eq "One Hour Session, one hour session, /images/one-hour.png"
		end
	end

	context "product name missing" do
		before { @product = Product.new(product_description: "one hour session", product_image_url: "/images/one-hour.png") }

		it "should return product description and product image" do
			expect(@product).to eq "one hour session, /images/one-hour.png"
		end
	end

	context "product description missing" do
		before { @product = Product.new(product_name: "One Hour Session", product_image_url: "/images/one-hour.png") }

		it "should return product name and product image" do
			expect(@product).to eq "One hour session, /images/one-hour.png"
		end
	end

	context "product image missing" do
		before { @product = Product.new(product_name: "One Hour Session", product_description: "one hour session") }

		it "should return product name and product description" do
			expect(@product).to eq "One hour session, one hour session"
		end
	end

	context "product name and product description missing" do
		before { @product = Product.new(product_image_url: "/images/one-hour.png") }

		it "should return product image" do
			expect(@product).to eq "/images/one-hour.png"
		end
	end

	context "product name and product image missing" do
		before { @product = Product.new(product_description: "one hour session") }

		it "should return product description" do
			expect(@product).to eq "one hour session"
		end
	end

	context "product description and product image missing" do
		before { @product = Product.new(product_name: "One Hour Session") }

		it "should return product name" do
			expect(@product).to eq "One hour session"
		end
	end

	context "product name, product description, and product image missing" do

		it "should return nothing" do
			expect(@product).to eq ""
		end
	end
end
