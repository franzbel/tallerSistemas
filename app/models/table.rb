class Table < ActiveRecord::Base
	has_many :orders
	validates :state, presence: {:message => "No puede estar vacio"}


	def free
		self.state = 'libre'
		self.save!
	end
end
