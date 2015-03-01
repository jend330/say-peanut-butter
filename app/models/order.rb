class Order < ActiveRecord::Base
	belongs_to :product
	attr_accessible @user.orders.new(product: @product)
end