class Recipe < ApplicationRecord
  belongs_to :user
  belongs_to :main_ingredient, optional: true
  has_many :ingredients, foreign_key: "recipe_id", dependent: :destroy
  has_many :instractions, foreign_key: "recipe_id", dependent: :destroy

  enum category: { 主食: 0, 汁物: 1, 主菜: 2, 副菜: 3, デザートやおやつなど: 4, その他: 5 }
  enum time_required: { 十五分以内: 0, 十五分から三十分: 1, 三十分から一時間: 2, 一時間以上: 3 }

  accepts_nested_attributes_for :ingredients
  accepts_nested_attributes_for :instractions

  attachment :recipe_image

  validates :recipe_name, presence: true
  validates :category, presence: true
  validates :time_required, presence: true
  validates :how_many_serving, presence: true

  scope :search, -> (search_params) do
    return if search_params.blank?

    recipe_name_like(search_params[:recipe_name]).
      ingredient_like(search_params[:ingredient]).
      time_required_is(search_params[:time_required]).
      category_is(search_params[:category])
  end

  scope :recipe_name_like, -> (recipe_name) { where('recipe_name LIKE ?', "%#{recipe_name}%") if recipe_name.present? }
  scope :ingredient_like, -> (ingredient) { where('ingredient LIKE ?', "%#{ingredient}%") if ingredient.present? }
  scope :time_required_is, -> (time_required) { where(time_required: time_required) if time_required.present? }
  scope :category_is, -> (category) { where(category: category) if category.present? }
end
