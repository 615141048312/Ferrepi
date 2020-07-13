class UsersController < ApplicationController
  def show
    @posted = current_user.recipes.page(params[:page]).reverse_order
  end
end
