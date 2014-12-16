class Group < ActiveRecord::Base
	scope :active, lambda { where(:active => true) }
	has_many :units
end
