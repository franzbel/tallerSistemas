class Order < ActiveRecord::Base
	belongs_to :table
	has_and_belongs_to_many :food_menus
end
