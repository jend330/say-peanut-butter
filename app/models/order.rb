class Order < ActiveRecord::Base
	belongs_to :product, :user
end