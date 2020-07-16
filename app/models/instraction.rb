class Instraction < ApplicationRecord
  belongs_to :recipe, optional: true

  validates :order, presence: true
  validates :procedure, presence: true
end
