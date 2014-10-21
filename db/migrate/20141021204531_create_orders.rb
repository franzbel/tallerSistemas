class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.string :state
      t.string :takeaway
      t.string :observation
      t.integer :table_id

      t.timestamps
    end
  end
end
