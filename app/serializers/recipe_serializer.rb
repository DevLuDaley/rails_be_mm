class RecipeSerializer < ActiveModel::Serializer  
    # has_many :meals
    attributes :id, :name, :category, :url, :image_url, :cooking_time #, :meals
end