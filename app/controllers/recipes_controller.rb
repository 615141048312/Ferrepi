class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    @recipe.ingredients.build
    @recipe.instractions.build
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render 'new'
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.ingredients
    @instractions = @recipe.instractions
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  def show
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.ingredients
    @instractions = @recipe.instractions
    @recipe.ingredients.build
    @recipe.instractions.build
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.ingredients.build
    @recipe.instractions.build
    @recipe.destroy
    redirect_to home_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(
      :user_id,
      :main_ingredient_id,
      :recipe_name,
      :recipe_image,
      :caption,
      :time_required,
      :how_many_serving,
      :category,
      ingredients_attributes: [:ingredient, :amount],
      instractions_attributes: [:order, :procedure]
    )
  end
end
