class RemoveListFromRecipeC < ActiveRecord::Migration
  def change
    remove_column :recipe_cs, :list, :string
  end
end
