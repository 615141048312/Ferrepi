class SearchController < ApplicationController
  def form
  end

  def search
    @search_params = recipe_search_params
    @recipes = Recipe.search(@search_params).joins(:ingredients)
  end

  private

  def recipe_search_params
    params.fetch(:search, {}).permit(:recipe_name, :ingredient, :time_required, :category)
  end
end
