class Order < ActiveRecord::Base
	belongs_to :product
	attr_accessible :user_id, :product_id, :total
end