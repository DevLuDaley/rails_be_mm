class ChangeTypeToCategoryInRecipes < ActiveRecord::Migration[6.0]
  def change
        rename_column :recipes, :type, :category
  end
end
