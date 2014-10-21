class WaitersController < ApplicationController
	def index
		@tables = Table.all	
	end
end
