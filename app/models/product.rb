class Product < ActiveRecord::Base
	validates :name, presence:true
	attr_accessible :name, :description, :image_url
end
