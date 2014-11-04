class CreateRecipeCs < ActiveRecord::Migration
  def change
    create_table :recipe_cs do |t|
      t.string :name
      t.text :list
      t.text :preparation

      t.timestamps
    end
  end
end
