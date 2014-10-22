class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :ingrediente
      t.references :recipe, index: true

      t.timestamps
    end
  end
end
