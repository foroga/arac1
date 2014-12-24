class OrderSupplier < ActiveRecord::Base
	scope :sort, lambda { order('order_id, position ASC') }

	belongs_to :order
	belongs_to :supplier

	acts_as_list :scope => :order
end
