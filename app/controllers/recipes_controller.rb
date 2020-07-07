class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    @recipe.build_ingredients
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end
end
