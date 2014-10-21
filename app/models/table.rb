class Table < ActiveRecord::Base
	validates :state, presence: {:message => "No puede estar vacio"}

	def free
		self.state = 'libre'
		self.save!
	end
end
