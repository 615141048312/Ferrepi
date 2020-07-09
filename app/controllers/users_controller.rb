class UsersController < ApplicationController
  def show
    @posted = current_user.recipes
  end
end
