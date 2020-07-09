class HomeController < ApplicationController
  def index
    @recipes = Recipe.page(params[:page]).reverse_order
  end
end
