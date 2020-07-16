class SearchController < ApplicationController
  def form
  end

  def search
    @search_params = recipe_search_params
    @recipes = Kaminari.paginate_array(Recipe.search(@search_params).includes(:ingredients)).page(params[:page])
  end

  private

  def recipe_search_params
    params.fetch(:search, {}).permit(:recipe_name, :ingredient, :time_required, :category)
  end
end
