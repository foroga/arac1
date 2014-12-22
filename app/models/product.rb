class Product < ActiveRecord::Base
	scope :active, lambda { where(:active => true) }
	belongs_to :supplier
end
