class HelpersController < ApplicationController
  def index
  end

  def mesas
  	@tables = Table.all
  end
end
