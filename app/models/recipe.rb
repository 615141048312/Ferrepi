class Recipe < ApplicationRecord
  belongs_to :user
  belongs_to :main_ingredient
  has_many :ingredients
  has_many :instractions

  accepts_nested_attributes_for :instractions
end
