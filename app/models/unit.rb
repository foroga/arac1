class Unit < ActiveRecord::Base
	scope :active, lambda { where(:active => true) }
	belongs_to :group
  has_many :users
end
