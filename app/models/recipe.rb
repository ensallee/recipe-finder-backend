class Recipe < ApplicationRecord
  has_many :recipe_lists
  has_many :users, through: :recipe_lists

  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  validates :title, presence: true

end
