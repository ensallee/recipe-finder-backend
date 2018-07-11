class Recipe < ApplicationRecord
  has_many :recipe_lists
  has_many :users, through: :recipe_lists

  validates :label, presence: true

end
