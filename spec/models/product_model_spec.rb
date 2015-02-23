require 'rails_helper'

	describe Product do

	context "product name, description, and image present" do
		before { @product = Product.create(name:"test", description:"test", image_url:"test") }

		it "should return name, description, and image" do
			expect(@product.name).to eq "test"
			expect(@product.description).to eq "test"
			expect(@product.image_url).to eq "test"
		end
	end

	context "product name missing" do
		before { @product = Product.create(description:"test", image_url: "test") }

		it "should return product description and product image" do
			expect(@product.description).to eq "test"
			expect(@product.image_url).to eq "test"
		end
	end

	context "product description missing" do
		before { @product = Product.create(name:"test", image_url:"test") }

		it "should return product name and product image" do
			expect(@product.name).to eq "test"
			expect(@product.image_url).to eq "test"
		end
	end

	context "product image missing" do
		before { @product = Product.create(name:"test", description:"test") }

		it "should return product name and product description" do
			expect(@product.name).to eq "test"
			expect(@product.description).to eq "test"
		end
	end

	context "product name and product description missing" do
		before { @product = Product.create(image_url:"test") }

		it "should return product image" do
			expect(@product.image_url).to eq "test"
		end
	end

	context "product name and product image missing" do
		before { @product = Product.create(description:"test") }

		it "should return product description" do
			expect(@product.description).to eq "test"
		end
	end

	context "product description and product image missing" do
		before { @product = Product.create(name:"test") }

		it "should return product name" do
			expect(@product.name).to eq "test"
		end
	end

	context "product name, product description, and product image missing" do

		it "should return nothing" do
			expect(@product).to eq nil
		end
	end
end
