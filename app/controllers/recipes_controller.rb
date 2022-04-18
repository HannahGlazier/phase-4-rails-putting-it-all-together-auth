class RecipesController < ApplicationController

    # GET /recipes
    def index
        render json: Recipe.all
    end

    # POST /recipes
    def create
        recipe = Recipe.create!(recipe_params)
        render json: recipe, status: :created
    end

    private

    def recipe_params
        params.permit(:title, :user_id, :instructions, :minutes_to_complete)
    end

end
