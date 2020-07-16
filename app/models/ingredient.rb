class Ingredient < ApplicationRecord
  belongs_to :recipe, optional: true

  validates :ingredient, presence: true
  validates :amount, presence: true
end
