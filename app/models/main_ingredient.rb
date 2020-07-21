class MainIngredient < ApplicationRecord
  has_many :recipes, foreign_key: "main_ingredient_id"

  enum food_group: { beans: 0, vegetables: 1, seafood: 2, meat: 3, eggs: 4 }
end
