class Api::V1::MealsController < ApplicationController
# before_action :find_meal, only: [:update]
  def index
    @meals = Meal.all.order(:created_at)
    render json: @meals, status: 200
  end

  def create
    @meal = Meal.create(meal_params)
    render json: @meal, status: 201
  end

  def destroy
    meal = Meal.find(params[:id])
    if meal.destroy
      render json: {mealId: meal.id}, status: 200
    end
  end

  def update
    @meal = Meal.find(params[:id])
    # if @meal.update(meal_params)
    #   render json: @meal, status: 200


#  @meal.update(meal_params)
    if @meal.save
      render json: @meal, status: :accepted
    else
      render json: { errors: @meal.errors.full_messages }, status: :unprocessible_entity
    # end
    end
  end

  private
    def meal_params
          params.require(:meal).permit(:category, :name, :photo, :url)
        # :recipes
    end


#   def meal_params
#     params.permit(:title, :content)
#   end

#   def find_meal
#     @meal = Meal.find(params[:id])
#   end
end