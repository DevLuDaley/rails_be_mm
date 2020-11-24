class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :type
      t.string :name
      t.string :url
      t.string :image_url
      t.integer :cooking_time

      t.timestamps
    end
  end
end
