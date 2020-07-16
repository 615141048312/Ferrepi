class Instraction < ApplicationRecord
  belongs_to :recipe, optional: true
end
