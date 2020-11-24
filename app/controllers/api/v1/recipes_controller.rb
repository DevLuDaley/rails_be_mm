class Api::V1::RecipesController < ApplicationController
# before_action :find_recipe, only: [:update]
  def index
    @recipes = Recipe.all.order(:created_at)
    render json: @recipes, status: 200
  end

  def create
    @recipe = Recipe.create(recipe_params)
    render json: @recipe, status: 201
  end

  def destroy
    recipe = Recipe.find(params[:id])
    if recipe.destroy
      render json: {recipeId: recipe.id}, status: 200
    end
  end

  def update
    @recipe = Recipe.find(params[:id])
    # if @recipe.update(recipe_params)
    #   render json: @recipe, status: 200


#  @recipe.update(recipe_params)
    if @recipe.save
      render json: @recipe, status: :accepted
    else
      render json: { errors: @recipe.errors.full_messages }, status: :unprocessible_entity
    # end
    end
  end

  private
    def recipe_params
      params.require(:recipe).permit(:category, :name, :photo, :url)
    #   :recipes,
    end


#   def recipe_params
#     params.permit(:title, :content)
#   end

#   def find_recipe
#     @recipe = recipe.find(params[:id])
#   end
end

### Example Routes