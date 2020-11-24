class MealSerializer < ActiveModel::Serializer
  has_many :recipes
  attributes :id, :name, :type, :url, :image_url, :cooking_time, :recipes
end