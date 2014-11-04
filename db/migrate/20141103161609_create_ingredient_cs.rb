class CreateIngredientCs < ActiveRecord::Migration
  def change
    create_table :ingredient_cs do |t|
      t.string :name
      t.references :recipec, index: true

      t.timestamps
    end
  end
end
