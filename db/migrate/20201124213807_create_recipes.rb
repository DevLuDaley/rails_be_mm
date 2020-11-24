class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :type
      t.string :name
      t.string :url
      t.string :image_url
      t.integer :cooking_time

      t.timestamps
    end
  end
end
