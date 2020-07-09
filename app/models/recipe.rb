class Recipe < ApplicationRecord
  belongs_to :user
  belongs_to :main_ingredient
  has_many :ingredients
  has_many :instractions

  enum category: { 主食: 0, 汁物: 1, 主菜: 2, 副菜: 3, デザートやおやつなど: 4, その他: 5 }
  enum time_required: { 十五分以内: 0, 十五分から三十分: 1, 三十分から一時間: 2, 一時間以上: 3 }

  accepts_nested_attributes_for :ingredients
  accepts_nested_attributes_for :instractions

  attachment :recipe_image
end
