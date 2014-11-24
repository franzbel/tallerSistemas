class RemoveStatusFromTables < ActiveRecord::Migration
  def change
    remove_column :tables, :status, :string
  end
end
