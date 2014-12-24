class Order < ActiveRecord::Base
	scope :sort, lambda { order('date DESC') }
	has_many :order_suppliers
end
