class ChangeTypeToCategoryInMeals < ActiveRecord::Migration[6.0]
  def change
    rename_column :meals, :type, :category
  end
end
