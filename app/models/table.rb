class Table < ActiveRecord::Base
	has_many :orders
	validates :status, presence: {:message => "No puede estar vacio"}

	def free
		self.status = 'libre'
		self.save!
	end
end
