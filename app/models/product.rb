class Product < ActiveRecord::Base
	validates :name, presence:true
	attr_accessible :name, :description, :price, :image_url
end
