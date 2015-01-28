class AddStateToTables < ActiveRecord::Migration
  def change
    add_column :tables, :state, :string
  end
end
