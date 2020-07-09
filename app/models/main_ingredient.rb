class MainIngredient < ApplicationRecord
  has_many :recipes

  enum food_group: { 豆類: 0, 野菜類: 1, 魚介類: 2, 肉類: 3, 卵類: 4 }
end
