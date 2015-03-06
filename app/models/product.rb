class Product < ActiveRecord::Base
	validates :name, presence:true
	attr_accessible :name, :description, :price, :image_url

	def self.search(search)
		if search
			find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
		else
			find(:all)
		end
	end

	def price_in_cents
		price * 100
	end
end
