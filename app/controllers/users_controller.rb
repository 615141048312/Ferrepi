class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @posted = current_user.recipes.page(params[:page]).reverse_order
  end
end
