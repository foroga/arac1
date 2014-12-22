class Supplier < ActiveRecord::Base
	scope :active, lambda { where(:active => true) }
	scope :sort, lambda { order('name ASC') }
	has_many :products
end
